package §_-lt§
{
   import §_-0DG§.§_-sQ§;
   import §_-8d§.§_-Ew§;
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-TG§.§_-0-E§;
   import §_-TG§.§_-00u§;
   import §_-Yp§.b2Vec2;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import flash.filters.GlowFilter;
   
   public class §_-05W§
   {
      
      public static const §_-0C9§:Number = 1000;
      
      public static const §_-Og§:Number = 500;
      
      private static var §continue§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-0C9§ = 1000;
         }
         do
         {
            §_-Og§ = 500;
            do
            {
               §continue§ = null;
            }
            while(!(_loc1_ || §_-05W§));
            
         }
         while(_loc2_);
         
      }
      
      private var §_-fI§:§_-eZ§;
      
      public var §_-QH§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §_-0F9§:Number;
      
      public var §_-Un§:Number;
      
      public var §_-kw§:int = -1;
      
      private var §_-1S§:String;
      
      private var §_-0BJ§:§_-J§;
      
      private var §_-uw§:§_-J§;
      
      private var §_-0DD§:§_-09b§;
      
      private var §_-0CN§:Number = 0;
      
      private var §_-jE§:Number = 0;
      
      public var §_-uQ§:int = -1;
      
      private var §_-qs§:int = -1;
      
      private var §_-kr§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §_-7d§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §_-PZ§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §_-05I§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §_-dl§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §_-6y§:String = "fly";
      
      public var §_-D7§:String = "fly_yell";
      
      public var §_-yS§:GlowFilter;
      
      private var §_-vo§:Vector.<§_-0-E§>;
      
      private var §_-eK§:§_-J§;
      
      private var §_-FQ§:Sprite = null;
      
      private var §_-6A§:§_-00u§;
      
      public function §_-05W§(param1:§_-eZ§, param2:Sprite, param3:§_-00u§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§_-6A§ = param3;
               loop1:
               while(true)
               {
                  this.§_-fI§ = param1;
                  while(true)
                  {
                     this.§_-1S§ = this.§_-fI§.§_-o2§;
                     addr78:
                     while(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr95:
         }
         while(true)
         {
            this.§_-vo§ = new Vector.<§_-0-E§>();
            do
            {
               this.§_-FQ§ = param2;
            }
            while(_loc5_ && param3);
            
            if(_loc4_ || param3)
            {
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr95);
            }
            §§goto(addr78);
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-0-E§ = null;
         if(!_loc3_)
         {
            this.§_-AL§();
            if(!_loc3_)
            {
               if(this.§_-vo§)
               {
                  addr48:
                  while(this.§_-vo§.length > 0)
                  {
                     _loc1_ = this.§_-vo§.pop();
                     if(_loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(_loc2_)
                  {
                     this.§_-vo§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function §_-07a§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.mW = param3;
         }
         loop0:
         do
         {
            this.mH = param4;
            loop1:
            while(true)
            {
               this.§_-kw§ = param1;
               do
               {
                  this.§_-Un§ = param2;
                  continue loop1;
               }
               while(!_loc6_);
               
               continue loop0;
            }
         }
         while(_loc5_);
         
      }
      
      public function §_-QT§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1)
            {
               if(_loc2_ || _loc3_)
               {
                  addr112:
                  this.§_-0F9§ = 1;
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§_-0F9§ = §§pop();
                  while(true)
                  {
                     if(this.§_-0F9§ < 1)
                     {
                        if(_loc2_ || _loc2_)
                        {
                           if(!(_loc2_ || param1))
                           {
                              break;
                           }
                           this.§_-0F9§ = 1 / this.§_-0F9§;
                        }
                        while(true)
                        {
                        }
                        addr88:
                     }
                     while(true)
                     {
                        this.§_-0F9§ = Math.min(11,this.§_-0F9§);
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr88);
                     }
                     if(_loc2_ || _loc3_)
                     {
                        if(!_loc3_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr112);
      }
      
      public function §_-xt§(param1:§_-Ew§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-vz§ = null;
         var _loc3_:Texture = null;
         if(!_loc6_)
         {
            §§push(this.§_-fI§.isGround());
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§goto(addr77);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr37:
                        if(!(_loc5_ || _loc3_))
                        {
                           continue;
                        }
                        while(false)
                        {
                           loop3:
                           while(true)
                           {
                              this.§_-0BJ§ = param1.getAnimation(this.§_-1S§);
                              addr53:
                              addr67:
                              while(_loc5_ || this)
                              {
                                 this.§_-uw§ = this.§_-0BJ§;
                                 if(!(_loc5_ || param1))
                                 {
                                    continue;
                                 }
                                 §§goto(addr37);
                              }
                              while(true)
                              {
                                 continue loop3;
                                 §§goto(addr53);
                              }
                           }
                           continue loop0;
                        }
                        var _loc4_:* = Number(1);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§push(this.§_-uw§);
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 addr96:
                                 _loc2_ = this.§_-uw§.getFrame(0);
                                 addr94:
                                 if(!_loc6_)
                                 {
                                    §§push(_loc2_.scale);
                                    if(_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 _loc3_ = _loc2_.texture;
                                 if(!_loc6_)
                                 {
                                    addr121:
                                    this.§_-0DD§ = new §_-09b§(_loc3_);
                                    if(!_loc6_)
                                    {
                                       if(!_loc2_)
                                       {
                                          §§push(this.§_-0DD§);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(this.§_-0DD§);
                                             loop7:
                                             while(true)
                                             {
                                                §§push(-§§pop().width);
                                                loop8:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§push(2);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-0DD§);
                                                               loop12:
                                                               for(; !_loc6_; if(!(_loc5_ || param1))
                                                               {
                                                                  continue;
                                                               },§§goto(addr208))
                                                               {
                                                                  §§push(this.§_-0DD§);
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§push(-§§pop().height);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     if(_loc6_ && _loc2_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§push(2);
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = §§pop();
                                                                           addr271:
                                                                           loop17:
                                                                           while(true)
                                                                           {
                                                                              loop18:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§_-0DD§);
                                                                                 loop19:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().scaleX = §§pop();
                                                                                       addr227:
                                                                                       while(_loc5_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(this.§_-0DD§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       addr208:
                                                                                       §§push(_loc4_);
                                                                                       continue loop17;
                                                                                       if(!(_loc5_ || _loc3_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§pop().scaleY = §§pop();
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          this.mW = this.§_-0DD§.width / 2;
                                                                                          for(; !_loc6_; this.mH = this.§_-0DD§.height / 2,do
                                                                                          {
                                                                                             this.§_-FQ§.addChild(this.§_-0DD§);
                                                                                          }
                                                                                          while(!_loc5_);
                                                                                          ,if(_loc6_ && _loc3_)
                                                                                          {
                                                                                             continue;
                                                                                          },if(_loc6_)
                                                                                          {
                                                                                             continue loop22;
                                                                                          },if(!(_loc6_ && _loc2_))
                                                                                          {
                                                                                             return true;
                                                                                          },addr318:,while(_loc5_ || _loc2_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                          },§§goto(addr334))
                                                                                          {
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr328:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§_-0DD§);
                                                                                                addr330:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_.pivotX);
                                                                                                   addr332:
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      addr333:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr334:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§_-0DD§);
                                                                                                            break loop19;
                                                                                                         }
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr227);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§push(_loc2_.pivotY);
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                       addr317:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr332);
                                                                                    }
                                                                                    §§goto(addr334);
                                                                                 }
                                                                                 §§goto(addr330);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr270:
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               continue loop6;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr317);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr328);
                                    }
                                    §§goto(addr325);
                                 }
                                 §§goto(addr271);
                              }
                              else
                              {
                                 _loc3_ = this.§_-6A§.textureManager.§_-Fl§();
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr94);
                        addr44:
                     }
                     addr78:
                  }
               }
               while(true)
               {
                  this.§_-eK§ = param1.getAnimation("SPARKLES");
                  §§goto(addr67);
                  §§goto(addr78);
               }
            }
            addr77:
            return false;
         }
         §§goto(addr44);
      }
      
      public function §_-kR§(param1:§_-sQ§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§_-aw§);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               §§push(§_-sQ§.§_-WD§);
               if(!(_loc6_ && _loc3_))
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§goto(addr124);
                        }
                        §§goto(addr139);
                     }
                     else
                     {
                        §§push(§_-sQ§.§_-2b§);
                        if(!(_loc6_ && _loc2_))
                        {
                           §§goto(addr137);
                        }
                     }
                     §§goto(addr142);
                  }
               }
               §§goto(addr137);
            }
            addr124:
            §§push(0);
            if(_loc6_)
            {
               addr137:
               if(§§pop() === _loc4_)
               {
                  addr139:
                  §§push(1);
                  if(_loc5_)
                  {
                     addr142:
                  }
               }
               else
               {
                  §§push(2);
               }
            }
            §§goto(addr148);
         }
         addr148:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§_-J2§();
               _loc3_ = _loc2_[0];
               if(!(_loc6_ && _loc3_))
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(_loc5_ || this)
                  {
                     §§push(§§pop() / §_-00u§.§_-lY§);
                  }
                  §§pop().§_-0CN§ = §§pop();
                  if(!_loc6_)
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(!(_loc6_ && param1))
                     {
                        §§push(§§pop() / §_-00u§.§_-lY§);
                     }
                     §§pop().§_-jE§ = §§pop();
                     if(!_loc5_)
                     {
                     }
                     break;
                  }
               }
               addr149:
               this.§_-JE§();
               break;
            case 1:
               §§goto(addr149);
            default:
               §§goto(addr149);
         }
      }
      
      public function §_-ld§() : Array
      {
         return §_-vr§.§_-ld§(null,this.§_-fI§.§_-KD§());
      }
      
      public function §_-07r§() : Array
      {
         return §_-vr§.§_-07r§(null,this.§_-fI§.§_-KD§());
      }
      
      public function §_-dR§() : Array
      {
         return §_-vr§.§_-dR§(null);
      }
      
      public function §_-0B-§() : void
      {
      }
      
      public function §_-3U§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§_-FQ§.scaleX = this.§_-FQ§.scaleY = param1;
         }
      }
      
      public function §_-JE§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-vz§ = null;
         if(!_loc4_)
         {
            §§push(this.§_-0BJ§);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     return;
                  }
               }
               else
               {
                  §§push(this.§_-PZ§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           this.§_-kr§ = 1;
                           if(!(_loc5_ || _loc2_))
                           {
                              addr670:
                           }
                        }
                        else
                        {
                           addr291:
                        }
                        addr705:
                        §§push(this.§_-uw§);
                        if(!_loc4_)
                        {
                           if(§§pop())
                           {
                              addr712:
                              _loc1_ = this.§_-uw§.getFrame(this.§_-kr§);
                              if(!_loc4_)
                              {
                                 §§push(this.§_-0DD§);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop54:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr879:
                                             while(true)
                                             {
                                                §§push(Boolean(_loc1_));
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue loop54;
                                                }
                                             }
                                          }
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(this.§_-0DD§);
                                             while(true)
                                             {
                                                §§pop().texture = _loc1_.texture;
                                             }
                                             addr869:
                                          }
                                          loop59:
                                          while(true)
                                          {
                                             §§push(this.§_-0DD§);
                                             loop60:
                                             while(!_loc4_)
                                             {
                                                §§push(_loc1_.pivotX);
                                                loop61:
                                                while(true)
                                                {
                                                   §§push(-§§pop());
                                                   addr824:
                                                   while(true)
                                                   {
                                                      §§push(this.§_-0CN§);
                                                      addr826:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr827:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            addr828:
                                                            while(_loc5_ || _loc1_)
                                                            {
                                                               §§push(this.§_-0DD§);
                                                               while(!_loc4_)
                                                               {
                                                                  continue loop61;
                                                               }
                                                               continue loop60;
                                                            }
                                                            continue loop59;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr869);
                                          }
                                       }
                                       §§goto(addr880);
                                    }
                                    if(_loc4_ && this)
                                    {
                                       continue;
                                    }
                                    §§goto(addr737);
                                 }
                              }
                              §§goto(addr760);
                           }
                           addr880:
                           return;
                        }
                        §§goto(addr712);
                     }
                     else
                     {
                        §§push(this.§_-fI§);
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(!(_loc4_ && _loc3_))
                           {
                              §§push(0);
                              if(_loc5_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(_loc5_ || this)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_)
                                          {
                                             §§pop();
                                             loop0:
                                             while(true)
                                             {
                                                §§push(this.§_-0BJ§);
                                                if(_loc5_ || _loc2_)
                                                {
                                                   §§push(this.§_-7d§);
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc4_)
                                                         {
                                                            loop52:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(this.mTryToSpecial);
                                                                  break;
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-7d§);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  loop76:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-0BJ§);
                                                                     loop32:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-D7§);
                                                                        addr620:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 addr623:
                                                                                 loop86:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§push(this.mTryToScream);
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             loop85:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                addr576:
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr585:
                                                                                                                  loop15:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(this.§_-0BJ§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop32;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-05I§);
                                                                                                                                    addr543:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                       addr544:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             addr548:
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                                                                {
                                                                                                                                                   break loop13;
                                                                                                                                                }
                                                                                                                                                continue loop15;
                                                                                                                                                §§goto(addr548);
                                                                                                                                             }
                                                                                                                                             addr549:
                                                                                                                                          }
                                                                                                                                          loop20:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             loop21:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc4_ && _loc1_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      addr702:
                                                                                                                                                      addr703:
                                                                                                                                                      while(!§§pop())
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      loop41:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         addr704:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-0BJ§);
                                                                                                                                                            addr674:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§_-7d§);
                                                                                                                                                               addr676:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop41;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr701:
                                                                                                                                                }
                                                                                                                                                loop22:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr686:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc5_)
                                                                                                                                                         {
                                                                                                                                                            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-7d§);
                                                                                                                                                            this.mIsSpecial = true;
                                                                                                                                                            addr696:
                                                                                                                                                         }
                                                                                                                                                         break loop22;
                                                                                                                                                      }
                                                                                                                                                      addr660:
                                                                                                                                                      addr660:
                                                                                                                                                      §§push(this.mTryToScream);
                                                                                                                                                      loop83:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(0);
                                                                                                                                                         addr661:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                            addr662:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               addr663:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        addr665:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.mTryToFly);
                                                                                                                                                                           addr635:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() > 0);
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop12:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    addr643:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop12;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop27;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr702);
                                                                                                                                                                              }
                                                                                                                                                                              addr646:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr647:
                                                                                                                                                                                 while(!(_loc4_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop76;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr670);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr664:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr641);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop83;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr670);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr712);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr534:
                                                                                                                           }
                                                                                                                           §§goto(addr704);
                                                                                                                        }
                                                                                                                        this.mIsFlying = true;
                                                                                                                        addr602:
                                                                                                                        if(_loc4_ && _loc1_)
                                                                                                                        {
                                                                                                                           §§goto(addr696);
                                                                                                                        }
                                                                                                                        §§goto(addr705);
                                                                                                                        addr614:
                                                                                                                        addr593:
                                                                                                                     }
                                                                                                                     §§goto(addr662);
                                                                                                                  }
                                                                                                                  addr585:
                                                                                                               }
                                                                                                               break loop13;
                                                                                                            }
                                                                                                            §§goto(addr663);
                                                                                                         }
                                                                                                         addr582:
                                                                                                      }
                                                                                                      §§goto(addr635);
                                                                                                   }
                                                                                                   §§goto(addr585);
                                                                                                   continue loop85;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   addr557:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§push(this.mTryToBlink);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         §§push(0);
                                                                                                         if(_loc5_ || _loc1_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               addr501:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  loop43:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        loop51:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 loop34:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§_-0BJ§);
                                                                                                                                          loop33:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§_-dl§);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         addr438:
                                                                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               loop5:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc4_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop86;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc5_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-dl§);
                                                                                                                                                                                 if(!(_loc4_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    this.mIsBlinking = true;
                                                                                                                                                                                    §§goto(addr705);
                                                                                                                                                                                    addr406:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr712);
                                                                                                                                                                              }
                                                                                                                                                                              this.mIsScreaming = true;
                                                                                                                                                                              addr631:
                                                                                                                                                                              §§goto(addr614);
                                                                                                                                                                              addr631:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr712);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.mTryToFly);
                                                                                                                                                                           loop40:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 loop42:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc4_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop52;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop51;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc4_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                             }
                                                                                                                                                                                             loop2:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§_-uw§ = this.§_-0BJ§;
                                                                                                                                                                                                   if(_loc5_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc5_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(false)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.mIsFlying = true;
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr291);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr323:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§_-0BJ§);
                                                                                                                                                                                                                                    if(!(_loc5_ || _loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc5_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop0;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr534);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr398:
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc4_ && _loc1_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop42;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr323:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr712);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr283:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr705);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr647);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-05I§);
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.mIsScreaming = true;
                                                                                                                                                                                                                     while(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr665);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr705);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr602);
                                                                                                                                                                                                                     addr521:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr712);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr558:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr712);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr339:
                                                                                                                                                                                                            if(!(_loc5_ || _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-6y§);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr353:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr283);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr353);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr712);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr339);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr406);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr643);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr582);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr703);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr670);
                                                                                                                                                                     }
                                                                                                                                                                     this.§_-uw§ = this.§_-0BJ§.getSubAnimation(this.§_-D7§);
                                                                                                                                                                     §§goto(addr631);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr549);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr544);
                                                                                                                                                            §§goto(addr438);
                                                                                                                                                         }
                                                                                                                                                         addr439:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr676);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr543);
                                                                                                                                                }
                                                                                                                                                addr414:
                                                                                                                                             }
                                                                                                                                             §§goto(addr674);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr593);
                                                                                                                                    }
                                                                                                                                    §§goto(addr521);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr451);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr646);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr501:
                                                                                                            }
                                                                                                            §§goto(addr661);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr576);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr558);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr575:
                                                                                          }
                                                                                          §§goto(addr660);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr624);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr631);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr701);
                                                            }
                                                            addr102:
                                                         }
                                                         §§goto(addr662);
                                                      }
                                                      §§goto(addr323);
                                                   }
                                                   §§goto(addr676);
                                                }
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§_-6y§);
                                                if(_loc5_)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr323);
                                                      }
                                                      §§goto(addr439);
                                                   }
                                                   §§goto(addr620);
                                                }
                                                §§goto(addr414);
                                             }
                                          }
                                          §§goto(addr371);
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr645);
                                 }
                                 §§goto(addr635);
                              }
                              §§goto(addr501);
                           }
                           §§goto(addr660);
                        }
                        §§goto(addr214);
                     }
                  }
                  §§goto(addr623);
               }
               §§goto(addr712);
            }
            §§goto(addr541);
         }
         §§goto(addr353);
      }
      
      public function §_-P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§_-FQ§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§_-uQ§);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc2_)
                  {
                     addr27:
                     this.§_-tM§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§_-fI§.§_-Kh§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() / this.§_-fI§.§_-8l§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop() * this.§_-uQ§);
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr127:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!(_loc3_ || _loc1_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr63);
         }
         §§goto(addr27);
      }
      
      public function §_-tM§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§_-0BJ§)
            {
               if(_loc2_)
               {
                  addr24:
                  this.§_-uQ§ = this.§_-0BJ§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §_-c4§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            this.§_-yS§ = new GlowFilter();
         }
         do
         {
            this.§_-yS§.blurX = param2;
            do
            {
               this.§_-yS§.blurY = param3;
               do
               {
                  this.§_-yS§.color = param1;
               }
               while(_loc4_ && param2);
               
            }
            while(!(_loc5_ || param2));
            
         }
         while(!(_loc5_ || param3));
         
      }
      
      public function §_-AL§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-yS§ = null;
         }
      }
      
      public function §_-XU§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§_-fI§.§_-vw§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc4_ && this))
               {
                  break;
               }
               loop1:
               while(_loc4_ && _loc1_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§_-iG§(_loc2_);
            §§goto(addr80);
         }
      }
      
      public function §_-bJ§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§_-vo§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(_loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           this.§_-iG§(_loc2_);
                           addr93:
                           addr102:
                           while(true)
                           {
                              addr58:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr60:
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    addr61:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                           }
                           addr102:
                           while(true)
                           {
                              if(this.§_-vo§[_loc2_].lifeTime < 0)
                              {
                                 continue loop1;
                              }
                              §§goto(addr58);
                           }
                        }
                     }
                     while(true)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr93);
                     }
                     continue;
                  }
                  this.§_-vo§[_loc2_].updateLifeTime(param1);
                  §§goto(addr102);
               }
               §§goto(addr60);
            }
            §§goto(addr61);
         }
      }
      
      private function §_-iG§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            if(!this.§_-eK§)
            {
               if(_loc7_ || _loc2_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(!_loc6_)
         {
            if(Math.random() < 0.5)
            {
               if(_loc7_)
               {
                  addr45:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§_-vz§ = this.§_-eK§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(!_loc6_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§_-0-E§ = null;
            if(!(_loc6_ && param1))
            {
               if(param1 < this.§_-vo§.length)
               {
                  addr78:
                  (_loc5_ = this.§_-vo§[param1]).§_-tX§(_loc4_);
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc5_.§_-F§(_loc3_.texture);
                     if(!_loc6_)
                     {
                        addr136:
                        §§push(_loc5_.image);
                        if(_loc7_)
                        {
                           §§push(_loc3_.pivotX);
                           if(!(_loc6_ && param1))
                           {
                              §§push(-§§pop());
                              if(!_loc6_)
                              {
                                 §§push(this.§_-0DD§);
                                 if(_loc7_ || param1)
                                 {
                                    §§push(§§pop().width / 2);
                                    if(_loc7_ || this)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(Math.random() * this.§_-0DD§.width);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§goto(addr195);
                                             }
                                             §§goto(addr246);
                                          }
                                          §§goto(addr232);
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                                 §§goto(addr222);
                              }
                              addr195:
                              §§pop().x = §§pop();
                              if(_loc7_)
                              {
                                 addr202:
                                 addr200:
                                 addr198:
                                 §§push(_loc5_.image);
                                 §§push(-_loc3_.pivotY);
                                 if(_loc7_ || _loc2_)
                                 {
                                    addr222:
                                    §§push(this.§_-0DD§.height / 2);
                                    if(!(_loc6_ && this))
                                    {
                                       addr232:
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc6_ && this))
                                       {
                                          addr246:
                                          §§push(§§pop() + Math.random() * this.§_-0DD§.height);
                                       }
                                    }
                                    §§goto(addr246);
                                 }
                                 §§pop().y = §§pop();
                              }
                              return;
                           }
                           §§goto(addr202);
                        }
                        §§goto(addr200);
                        addr100:
                     }
                     §§goto(addr198);
                  }
                  §§goto(addr100);
               }
               else
               {
                  _loc5_ = new §_-0-E§(_loc3_.texture,_loc4_);
                  if(!(_loc6_ && param1))
                  {
                     this.§_-vo§.push(_loc5_);
                     if(!_loc6_)
                     {
                        this.§_-FQ§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr136);
            }
            §§goto(addr78);
         }
         §§goto(addr45);
      }
      
      public function §_-BJ§() : §_-09b§
      {
         return this.§_-0DD§;
      }
   }
}
