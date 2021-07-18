package §9T§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§`!9§;
   import §-!&§.§3!,§;
   import §2G§.§+b§;
   import §2G§.§0Z§;
   import §2G§.§>U§;
   import §8z§.Texture;
   import §`K§.§^F§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §>>§
   {
      
      public static const §true §:String = "ChannelSlingshot";
      
      public static const §04§:Number = 900;
      
      public static const §[R§:Number = 200;
      
      public static const §[!=§:Number = 200;
      
      public static const §&!>§:Number = 1500;
      
      public static const §?!;§:Number = 5000;
      
      public static const §]3§:Number = 1000;
      
      public static const §[l§:Number = 1000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(true)
         {
            §04§ = 900;
            while(true)
            {
               §[R§ = 200;
               §[!=§ = 200;
               if(!_loc2_)
               {
                  break;
               }
               §&!>§ = 1500;
               do
               {
                  §?!;§ = 5000;
                  §]3§ = 1000;
               }
               while(!_loc2_);
               
               if(_loc2_)
               {
                  §[l§ = 1000;
                  return;
               }
            }
         }
      }
      
      protected var mName:String;
      
      protected var §]!B§:Number;
      
      protected var §5G§:Number;
      
      protected var §,&§:Number;
      
      protected var §60§:Number;
      
      private var §^!;§:§0Z§;
      
      protected var § !'§:Number;
      
      protected var §?!N§:Number = 1;
      
      private var §8A§:Sprite;
      
      protected var §3!Q§:§4^§;
      
      private var §<!8§:§1!A§;
      
      protected var §'Y§:§97§;
      
      private var §9!I§:Number;
      
      private var §?]§:Boolean = false;
      
      private var §?!D§:Boolean = false;
      
      protected var §;m§:Boolean = false;
      
      private var §=Q§:Number;
      
      private var §#<§:Number = 0;
      
      private var §1!?§:Number = 0;
      
      private var §`+§:Number = 0;
      
      private var §<D§:Number = 1000;
      
      private var §]I§:Number;
      
      private var §"E§:Number;
      
      private var §;l§:int;
      
      private var §2u§:Number = 0;
      
      protected var §7g§:Number;
      
      protected var §<;§:Number;
      
      private var §&!N§:Number = 1;
      
      private var §-F§:Number = 0;
      
      private var §8!J§:b2Vec2;
      
      private var §6-§:Number = 1;
      
      public function §>>§(param1:§97§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            while(true)
            {
               this.§'Y§ = param1;
               loop1:
               while(true)
               {
                  this.§8A§ = param2;
                  loop2:
                  while(true)
                  {
                     this.mName = param3;
                     this.§^!;§ = §>U§.§=v§(this.mName).§1h§;
                     while(true)
                     {
                        this.§]!B§ = param4;
                        continue loop1;
                        addr96:
                        while(_loc7_ || param2)
                        {
                           this.§ !'§ = 0;
                           this.§?]§ = false;
                           if(!(_loc7_ || this))
                           {
                              continue loop2;
                           }
                           this.§?!D§ = false;
                           while(true)
                           {
                              this.§#<§ = 0;
                              §§goto(addr59);
                           }
                        }
                     }
                  }
               }
            }
         }
         addr59:
         loop8:
         while(true)
         {
            this.§[!B§();
            while(!_loc6_)
            {
               if(_loc7_ || param1)
               {
                  this.§7g§ = 0;
                  if(_loc7_ || param1)
                  {
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc7_)
                           {
                              break loop8;
                           }
                           continue loop0;
                        }
                        continue loop7;
                     }
                     continue loop8;
                  }
                  continue;
                  continue;
               }
               continue loop1;
            }
            continue loop6;
         }
      }
      
      public function §4b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?]§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§8A§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§8A§);
                     addr54:
                     addr41:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§8A§ = null;
                        }
                        while(_loc2_);
                        
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr29);
                  }
               }
               addr29:
               return;
            }
            §§goto(addr54);
         }
         §§goto(addr41);
      }
      
      public function §%!@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§?!D§);
         do
         {
            §§push(!§§pop());
            if(_loc2_)
            {
               if(§§pop())
               {
                  break;
               }
            }
            do
            {
               §§pop();
               §§push(this.§?]§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(Boolean(§§pop()));
               }
            }
            while(!_loc2_);
            
         }
         while(_loc3_);
         
         if(§§pop())
         {
            return;
         }
         loop2:
         while(true)
         {
            §§push(this.§?!N§);
            while(true)
            {
               §§push(0);
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     if(!(_loc3_ && this))
                     {
                        this.§`+§ = 0;
                     }
                     while(true)
                     {
                        this.§2u§ = 0;
                        this.§ !'§ = 0;
                        addr288:
                        while(true)
                        {
                           this.§"E§ = 0;
                           addr283:
                           while(true)
                           {
                              this.§?!N§ = 0;
                           }
                        }
                     }
                     addr319:
                  }
                  while(true)
                  {
                     §§push(Number(Math.min(param1,this.§=Q§)));
                     loop9:
                     while(true)
                     {
                        param1 = §§pop();
                        loop10:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§]!B§);
                           if(!_loc3_)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 §§push(this.§'Y§.§]!B§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() - this.§]!B§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr261:
                                       §§push(§§pop() * §§pop());
                                       if(_loc2_)
                                       {
                                          addr259:
                                          §§push(§§pop() / this.§=Q§);
                                       }
                                       §§pop().§]!B§ = §§pop() + §§pop();
                                       if(_loc2_)
                                       {
                                          §§push(this);
                                          §§push(this.§5G§);
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             §§push(param1);
                                             if(!_loc3_)
                                             {
                                                §§push(this.§'Y§.§5G§);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(§§pop() - this.§5G§);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr226:
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         addr224:
                                                         §§push(§§pop() / this.§=Q§);
                                                      }
                                                      §§pop().§5G§ = §§pop() + §§pop();
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§5G§);
                                                         if(_loc2_ || this)
                                                         {
                                                            §§push(param1);
                                                            if(_loc2_)
                                                            {
                                                               addr183:
                                                               §§push(§§pop() / 50);
                                                               if(!_loc3_)
                                                               {
                                                                  addr170:
                                                                  §§push(this.§=Q§);
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() / §04§);
                                                                  }
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§pop().§5G§ = §§pop() - §§pop();
                                                               §§push(this);
                                                               §§push(this.§ !'§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(360 - this.§ !'§);
                                                                     if(!(_loc3_ && _loc2_))
                                                                     {
                                                                        addr133:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc3_ && _loc2_))
                                                                        {
                                                                           addr131:
                                                                           §§push(§§pop() / this.§=Q§);
                                                                        }
                                                                        §§pop().§ !'§ = §§pop() + §§pop();
                                                                        loop11:
                                                                        while(_loc2_ || param1)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(this.§=Q§);
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() - param1);
                                                                           }
                                                                           §§pop().§=Q§ = §§pop();
                                                                           continue loop9;
                                                                           addr40:
                                                                           if(!(_loc2_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§%!8§();
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          this.§ !'§ = 0;
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop9;
                                                                                       addr54:
                                                                                    }
                                                                                    §§goto(addr40);
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue loop10;
                                                                              addr21:
                                                                           }
                                                                           §§goto(addr319);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  §§goto(addr131);
                                                               }
                                                               §§goto(addr133);
                                                            }
                                                            §§goto(addr170);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr288);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr226);
                                       }
                                       break;
                                    }
                                 }
                              }
                              §§goto(addr259);
                           }
                           §§goto(addr261);
                        }
                        §§goto(addr283);
                     }
                  }
               }
            }
         }
      }
      
      public function §!!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         this.§?!D§ = true;
         loop0:
         while(true)
         {
            this.§=Q§ = §04§;
            this.§^j§(§0Z§.§&;§);
            loop1:
            while(this.§2u§ != 0)
            {
               §§push(this);
               §§push(this.§5G§);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() + this.§2u§);
               }
               §§pop().§5G§ = §§pop();
               while(_loc1_)
               {
                  continue loop0;
                  this.§2u§ = 0;
                  if(_loc1_ || _loc2_)
                  {
                     break loop1;
                  }
               }
            }
            return;
         }
      }
      
      public function §'i§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         §§push(!this.§?]§);
         if(!this.§?]§)
         {
            §§pop();
            §§push(this.§7g§);
            if(_loc3_)
            {
               §§push(0);
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  addr279:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§<;§);
                           §§goto(addr283);
                        }
                     }
                     §§goto(addr170);
                  }
               }
            }
            addr283:
            loop1:
            while(true)
            {
               if(§§pop() > this.§'Y§.§;§.§9!>§.§^!O§)
               {
                  §§push(this);
                  §§push(this.§'Y§.§;§.§9!>§.§^!O§);
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(§§pop() - this.§<;§);
                  }
                  §§pop().§!#§(§§pop());
                  do
                  {
                     this.§7g§ = -1;
                  }
                  while(_loc4_);
                  
               }
               §§push(this);
               §§push(this.§7g§);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§7g§ = §§pop();
               §§push(this.§7g§);
               if(_loc3_ || _loc3_)
               {
                  §§push(0);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() <= §§pop())
                     {
                        while(true)
                        {
                           §§push(this.§`+§);
                           addr232:
                           while(!_loc4_)
                           {
                              §§push(0);
                           }
                           continue loop1;
                           loop7:
                           while(!(_loc4_ && _loc3_))
                           {
                              if(!isNaN(this.§<;§))
                              {
                                 §§push(this.§'Y§);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(§§pop().§;§);
                                    addr184:
                                    while(true)
                                    {
                                       §§push(§§pop().objects);
                                       addr185:
                                       while(true)
                                       {
                                          §§push(§§pop().§'h§(this.§]!B§,this.§<;§));
                                          if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr140:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(§§pop() >= 0)
                                                      {
                                                         §§push(this.§'Y§);
                                                         continue loop8;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr170);
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                }
                                                addr195:
                                             }
                                             break;
                                          }
                                          §§goto(addr195);
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr140);
                           }
                        }
                     }
                     addr170:
                     §§push(this);
                     §§push(param1);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() / 100);
                     }
                     if(§§pop().§!#§(§§pop()))
                     {
                        this.§7g§ = -1;
                        addr174:
                     }
                     else
                     {
                        this.§7g§ = 0;
                        addr137:
                        if(!_loc3_)
                        {
                           addr210:
                           while(true)
                           {
                              break loop10;
                              §§goto(addr210);
                           }
                           addr197:
                        }
                     }
                     addr19:
                     return;
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     if(§§pop() > §§pop())
                     {
                        break;
                     }
                     §§goto(addr197);
                  }
                  if(!(_loc4_ && this))
                  {
                     break;
                  }
                  continue loop20;
               }
               §§goto(addr232);
            }
            this.§7g§ = this.§`+§;
            return;
         }
         §§goto(addr279);
      }
      
      public function §!#§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this);
            §§push(this.§5G§);
            if(_loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§5G§ = §§pop();
         }
         §§push(this);
         §§push(this.§<;§);
         if(!_loc3_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§<;§ = §§pop();
         do
         {
            §§push(this.§<;§);
            if(_loc3_ && param1)
            {
               continue;
            }
            §§push(this.§'Y§);
            if(_loc2_)
            {
               §§push(§§pop().§;§);
               if(!_loc3_)
               {
                  §§push(§§pop().§9!>§);
                  if(_loc2_)
                  {
                     §§push(§§pop().§^!O§);
                     if(_loc2_ || _loc3_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           this.§%!8§();
                           if(!(_loc3_ && _loc2_))
                           {
                              §§push(false);
                              if(!(_loc3_ && _loc3_))
                              {
                                 return §§pop();
                              }
                              addr49:
                              return §§pop();
                           }
                        }
                        §§push(this.§<;§);
                        if(!_loc3_)
                        {
                           addr164:
                           §§push(§§pop() - this.§'Y§.§;§.§9!>§.§^!O§);
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                        }
                        §§push(Number(§§pop()));
                        continue;
                     }
                  }
               }
            }
            §§goto(addr164);
         }
         while(param1 = §§pop(), §§push(this), §§push(this.§5G§), if(_loc2_ || _loc3_)
         {
            §§push(§§pop() - param1);
         }, §§pop().§5G§ = §§pop(), do
         {
            §§push(this);
            §§push(this.§<;§);
            if(_loc2_ || param1)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§<;§ = §§pop();
         }
         while(!(_loc2_ || _loc2_));
         , !(_loc2_ || _loc2_));
         
         this.§%!8§();
         §§goto(addr49);
         §§push(true);
      }
      
      public function §[!B§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§`!9§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§+b§ = §>U§.§=v§(this.mName).shape;
         if(_loc4_)
         {
            §§push(_loc1_.§5L§());
            loop0:
            while(true)
            {
               §§push(§+b§.§%<§);
               addr151:
               addr77:
               loop1:
               while(true)
               {
                  if(§§pop() != §§pop())
                  {
                     continue loop0;
                  }
                  this.§8!J§ = _loc1_.§'! §()[0];
                  while(true)
                  {
                     this.§9!I§ = _loc1_.§6! §;
                     addr146:
                     while(true)
                     {
                        break loop1;
                     }
                     addr133:
                     if(!(_loc4_ || this))
                     {
                        continue;
                     }
                     this.§9!I§ = 1.5;
                     while(true)
                     {
                        break loop1;
                     }
                  }
               }
               while(true)
               {
                  this.§3!Q§ = this.§'Y§.§;§.§<'§.getAnimation(this.mName);
                  §§goto(addr92);
               }
            }
         }
         while(true)
         {
            if(this.§3!Q§)
            {
               continue;
            }
            if(!_loc5_)
            {
               if(_loc4_ || this)
               {
                  this.§9!"§(null);
                  break;
               }
               §§goto(addr131);
            }
            §§goto(addr92);
         }
         §§goto(addr32);
      }
      
      public function §9!"§(param1:§`!9§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(_loc4_ || param1)
         {
            if(!param1)
            {
               addr31:
               _loc2_ = this.§'Y§.§'k§.textureManager.§6K§();
            }
            else
            {
               _loc2_ = param1.texture;
               if(!_loc5_)
               {
                  §§push(param1.scale);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            if(this.§<!8§ == null)
            {
               if(!(_loc5_ && this))
               {
                  this.§<!8§ = new §1!A§(_loc2_);
                  this.§8A§.addChild(this.§<!8§);
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(!param1)
                     {
                        §§push(this.§<!8§);
                        loop2:
                        while(true)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(this.§<!8§);
                              loop3:
                              while(true)
                              {
                                 §§push(-§§pop().width);
                                 addr184:
                                 while(true)
                                 {
                                    §§push(2);
                                    addr185:
                                    while(true)
                                    {
                                       §§pop().x = §§pop() / §§pop();
                                       addr187:
                                       while(true)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§pop().texture = _loc2_;
                                 continue loop1;
                              }
                              addr272:
                           }
                           addr99:
                           while(true)
                           {
                              if(!(_loc4_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              if(!_loc5_)
                              {
                                 §§push(_loc3_);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§pop().scaleX = §§pop();
                                    if(_loc4_)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr200);
                           }
                           §§goto(addr233);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr251);
                     }
                  }
               }
            }
            else
            {
               §§push(this.§<!8§);
            }
            §§goto(addr272);
         }
         §§goto(addr31);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Boolean = true;
         this.§'i§(param1);
         loop0:
         while(true)
         {
            if(!this.§?!D§)
            {
               while(true)
               {
                  if(this.mName != "BIRD_SARDINE")
                  {
                     loop5:
                     while(!(_loc6_ && this))
                     {
                        this.§7r§(param1);
                        loop6:
                        while(true)
                        {
                           this.§>!'§(param1);
                           loop7:
                           while(true)
                           {
                              §§push(Boolean(_loc4_));
                              §§push(Boolean(_loc4_));
                              loop8:
                              while(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    §§push(param3);
                                    if(_loc6_ && param3)
                                    {
                                       break;
                                    }
                                    if(_loc5_)
                                    {
                                       §§push(true);
                                       if(_loc5_ || param2)
                                       {
                                          §§push(§§pop() == §§pop());
                                          break loop8;
                                       }
                                       continue loop8;
                                       continue loop8;
                                    }
                                 }
                                 if(!§§pop())
                                 {
                                    break loop7;
                                 }
                                 if(_loc5_ || this)
                                 {
                                    continue loop7;
                                 }
                                 addr68:
                                 if(!_loc6_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc5_)
                                       {
                                          break loop7;
                                       }
                                       addr116:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop0;
                                          }
                                          addr130:
                                          while(true)
                                          {
                                             this.§`+§ = 0;
                                             break loop5;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 continue loop6;
                              }
                              §§goto(addr44);
                           }
                           §§goto(addr19);
                        }
                     }
                     while(true)
                     {
                        _loc4_ = false;
                        §§goto(addr116);
                     }
                  }
                  addr19:
                  return;
               }
               addr87:
            }
            §§goto(addr130);
         }
      }
      
      public function §7r§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§#<§);
         loop0:
         while(true)
         {
            §§push(0);
            loop1:
            while(true)
            {
               if(§§pop() <= §§pop())
               {
                  §§push(this.§1!?§);
                  loop2:
                  for(; !_loc2_; while(true)
                  {
                     §§push(Math.random() * §&!>§);
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        §§goto(addr90);
                        §§push(§§pop() < param1);
                     }
                     §§goto(addr138);
                  })
                  {
                     §§push(0);
                     if(!(_loc2_ && param1))
                     {
                        §§push(§§pop() <= §§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                    addr36:
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr43);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    addr91:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    addr43:
                                    if(§§pop())
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§8-§();
                                             if(_loc3_ || this)
                                             {
                                                §§goto(addr18);
                                             }
                                             continue loop2;
                                          }
                                          addr148:
                                          §§push(this);
                                          §§push(this.§#<§);
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§#<§ = §§pop();
                                       }
                                       addr138:
                                       §§push(this.§#<§);
                                       §§push(0);
                                       if(_loc3_)
                                       {
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr18);
                                 }
                                 addr18:
                                 return;
                                 addr90:
                              }
                           }
                        }
                     }
                     §§goto(addr138);
                  }
                  continue loop0;
               }
               §§goto(addr148);
            }
            if(§§pop() <= §§pop())
            {
               this.§@I§();
            }
            §§goto(addr18);
         }
      }
      
      public function §@I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§#<§ = 0;
            do
            {
               this.§9!"§(this.§3!Q§.getFrame(0));
            }
            while(!_loc1_);
            
         }
      }
      
      public function §8-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  this.§#<§ = §[R§;
                  while(true)
                  {
                     if(!(_loc1_ || this))
                     {
                        continue loop0;
                     }
                     if(_loc1_)
                     {
                        this.§9!"§(this.§3!Q§.getSubAnimation("blink").getFrame(0));
                        if(_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  §§goto(addr54);
               }
            }
            return;
         }
         addr54:
      }
      
      public function §>!'§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§1!?§);
            loop0:
            do
            {
               §§push(0);
               loop1:
               while(§§pop() <= §§pop())
               {
                  §§push(this.§#<§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        continue loop1;
                     }
                     §§push(§§pop() <= §§pop());
                     while(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        §§push(this.§1!?§);
                        continue loop0;
                        if(_loc2_ || this)
                        {
                           break;
                        }
                     }
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc3_))
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              this.§^j§();
                           }
                           else
                           {
                              addr120:
                              this.§&A§();
                              addr19:
                              return;
                              addr122:
                              addr86:
                           }
                           §§goto(addr122);
                        }
                        if(_loc3_ && _loc3_)
                        {
                           §§goto(addr122);
                        }
                     }
                     §§goto(addr19);
                  }
                  if(§§pop() <= §§pop())
                  {
                     §§goto(addr120);
                  }
                  §§goto(addr86);
               }
               §§push(this);
               §§push(this.§1!?§);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§1!?§ = §§pop();
               §§goto(addr140);
            }
            while(_loc3_);
            
            §§goto(addr119);
            §§push(0);
         }
         §§goto(addr120);
      }
      
      public function §&A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1!?§ = 0;
            do
            {
               this.§9!"§(this.§3!Q§.getFrame(0));
            }
            while(_loc2_);
            
         }
      }
      
      public function §^j§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               while(true)
               {
                  §§push(this.§1!?§);
                  loop1:
                  while(true)
                  {
                     §§push(0);
                     loop2:
                     while(true)
                     {
                        if(§§pop() > §§pop())
                        {
                           addr187:
                           while(true)
                           {
                              this.§&A§();
                           }
                           addr187:
                        }
                        while(true)
                        {
                           §§push(this.§#<§);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§push(0);
                           if(!(_loc4_ || param2))
                           {
                              continue loop2;
                           }
                           if(§§pop() > §§pop())
                           {
                              while(true)
                              {
                                 this.§@I§();
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 if(!(_loc4_ || this))
                                 {
                                    continue loop0;
                                 }
                                 addr70:
                                 §§pop();
                                 if(!(_loc4_ || param1))
                                 {
                                    continue;
                                 }
                                 §§push(param2);
                                 if(!_loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc4_)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc3_ && param2))
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr70);
                                             }
                                             break;
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                addr102:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(!(_loc4_ || param2))
                                                   {
                                                      break;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      §§goto(addr194);
                                                   }
                                                   §§push(Boolean(this.§?!D§));
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   addr123:
                                                   while(true)
                                                   {
                                                      this.§1!?§ = §[!=§;
                                                      this.§9!"§(this.§3!Q§.getSubAnimation("yell").getFrame(0));
                                                      §§push(this.§?]§);
                                                      if(_loc4_ || param2)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         §§push(Boolean(§§pop()));
                                                         continue loop7;
                                                      }
                                                      §§goto(addr102);
                                                      continue loop11;
                                                   }
                                                }
                                                addr102:
                                                addr145:
                                             }
                                             while(true)
                                             {
                                                continue loop9;
                                             }
                                          }
                                       }
                                    }
                                    if(!§§pop())
                                    {
                                       §3!,§.§,!I§(param1,this.§^!;§,§true §);
                                       if(!(_loc4_ || this))
                                       {
                                          addr55:
                                       }
                                       return;
                                    }
                                    §3!,§.§,!I§(param1,this.§^!;§);
                                    §§goto(addr55);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr187);
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 if(§§pop() < 0)
                                 {
                                    §§push(§0Z§.§+-§);
                                    if(!(_loc3_ && param2))
                                    {
                                       addr144:
                                       param1 = §§pop();
                                       §§goto(addr145);
                                    }
                                    §§goto(addr144);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr144);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            addr194:
            return;
         }
         §§goto(addr187);
      }
      
      public function §-x§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc7_)
         {
            §§push(this.§`+§);
            §§push(0);
            if(_loc6_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(this);
                  §§push(this.§`+§);
                  if(!(_loc7_ && this))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§`+§ = §§pop();
                  if(!_loc7_)
                  {
                     §§push(this.§`+§);
                     if(_loc6_ || param1)
                     {
                        §§push(0);
                        if(!(_loc7_ && param1))
                        {
                           addr58:
                           if(§§pop() <= §§pop())
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§;l§);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_ || this)
                              {
                                 _loc4_.§;l§ = _loc5_;
                              }
                              §§push(this);
                              §§push(this.§"E§);
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§push(§§pop() * 0.4);
                              }
                              §§pop().§"E§ = §§pop();
                              addr605:
                              §§push(!this.§?]§);
                              §§push(!this.§?]§);
                              loop3:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§pop();
                                       §§push(this.§;l§);
                                       if(_loc6_ || this)
                                       {
                                          §§push(2);
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() < §§pop());
                                             loop5:
                                             while(true)
                                             {
                                                addr580:
                                                if(§§pop())
                                                {
                                                   §§push(this.§;l§);
                                                   break loop4;
                                                }
                                                addr479:
                                                §§push(!this.§?]§);
                                                while(§§pop())
                                                {
                                                   if(_loc6_ || param2)
                                                   {
                                                      §§pop();
                                                      §§push(param2);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         break;
                                                      }
                                                      continue;
                                                      continue;
                                                   }
                                                   continue loop4;
                                                }
                                                if(!§§pop())
                                                {
                                                   this.§`+§ = 0;
                                                   this.§2u§ = 0;
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc7_ && param2))
                                                      {
                                                         this.§ !'§ = 0;
                                                         this.§"E§ = 0;
                                                         addr236:
                                                         this.§%!8§();
                                                         return;
                                                         addr415:
                                                         addr441:
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            this.§"E§ = -1;
                                                            break loop5;
                                                         }
                                                         addr559:
                                                      }
                                                   }
                                                   break;
                                                }
                                                this.§;!%§(2.25);
                                                if(_loc7_ && param1)
                                                {
                                                   addr512:
                                                }
                                                §§goto(addr415);
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§"E§);
                                                      addr555:
                                                      while(true)
                                                      {
                                                         §§push(-1);
                                                         addr556:
                                                         loop11:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            addr557:
                                                            while(§§pop())
                                                            {
                                                               §§goto(addr559);
                                                               continue loop11;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr600:
                                                }
                                                this.§]I§ = this.§"E§;
                                                addr551:
                                                addr545:
                                                this.§`+§ = §[l§;
                                                §§push(this);
                                                §§push(this.§`+§);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() * (Math.abs(this.§]I§) / 2));
                                                }
                                                §§pop().§`+§ = §§pop();
                                                do
                                                {
                                                   this.§<D§ = this.§`+§;
                                                }
                                                while(!_loc6_);
                                                
                                                this.§ !'§ = 0;
                                                this.§?!N§ = 0;
                                                §§goto(addr512);
                                             }
                                             addr579:
                                          }
                                          addr594:
                                          §§push(§§pop() > §§pop());
                                          §§push(§§pop() > §§pop());
                                          if(_loc7_)
                                          {
                                             continue loop3;
                                          }
                                          if(§§pop())
                                          {
                                             §§pop();
                                             §§goto(addr600);
                                          }
                                          §§goto(addr557);
                                       }
                                       break;
                                    }
                                    §§goto(addr594);
                                    §§push(1);
                                 }
                                 §§goto(addr579);
                              }
                              addr622:
                           }
                           else
                           {
                              addr421:
                              §§push(this.§`+§);
                              §§push(this.§<D§);
                              §§push(2);
                              loop0:
                              while(true)
                              {
                                 if(§§pop() >= §§pop() / §§pop())
                                 {
                                    addr435:
                                    _loc3_ = Number((this.§<D§ - this.§`+§) / (this.§<D§ / 2));
                                    addr431:
                                 }
                                 else
                                 {
                                    §§push(this.§<D§);
                                    if(!(_loc7_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(2);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(this.§`+§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      §§push(this.§<D§);
                                                      if(_loc6_)
                                                      {
                                                         §§push(2);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               addr377:
                                                               §§push(§§pop() / (§§pop() / §§pop()));
                                                               if(_loc6_ || param2)
                                                               {
                                                                  addr385:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc7_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     _loc3_ = Number(§^F§.§1g§(_loc3_,false));
                                                                     do
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§]I§);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_)
                                                                           {
                                                                              §§push(this.§]I§);
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                        }
                                                                        §§pop().§2u§ = §§pop();
                                                                     }
                                                                     while(_loc7_ && _loc3_);
                                                                     
                                                                     while(true)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(360);
                                                                        §§push(§^F§);
                                                                        §§push(this.§<D§);
                                                                        if(!(_loc7_ && _loc3_))
                                                                        {
                                                                           §§push(this.§`+§);
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr263:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§push(this.§<D§);
                                                                              }
                                                                              §§push(§§pop() * §§pop().§1g§(§§pop()));
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(§§pop() * this.§?!N§);
                                                                              }
                                                                              §§pop().§ !'§ = §§pop();
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    addr285:
                                                                                    §§goto(addr236);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr480);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr436:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§^F§.§1g§(_loc3_));
                                                                                    break loop0;
                                                                                    §§goto(addr263);
                                                                                 }
                                                                                 addr436:
                                                                              }
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr236);
                                                                     addr240:
                                                                     addr388:
                                                                  }
                                                                  §§goto(addr555);
                                                               }
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         §§goto(addr436);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr431);
                                                      }
                                                   }
                                                   §§goto(addr431);
                                                }
                                                §§goto(addr435);
                                             }
                                             §§goto(addr556);
                                          }
                                          else
                                          {
                                             §§goto(addr435);
                                          }
                                       }
                                       while(true)
                                       {
                                          _loc3_ = §§pop();
                                          addr412:
                                          if(_loc6_)
                                          {
                                             §§push(this);
                                             §§push(_loc3_);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() * this.§]I§);
                                             }
                                             §§pop().§2u§ = §§pop();
                                             if(_loc6_ || param1)
                                             {
                                                §§goto(addr240);
                                             }
                                             else
                                             {
                                                §§goto(addr622);
                                             }
                                          }
                                          §§goto(addr441);
                                       }
                                       §§goto(addr480);
                                       addr411:
                                    }
                                    §§goto(addr377);
                                 }
                                 §§goto(addr436);
                              }
                              while(true)
                              {
                                 §§goto(addr411);
                              }
                              addr410:
                           }
                           §§goto(addr236);
                        }
                        §§goto(addr556);
                     }
                     else
                     {
                        addr222:
                        §§push(param1);
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              §§push(§§pop() < §§pop());
                              §§push(§§pop() < §§pop());
                              loop12:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§pop();
                                          loop13:
                                          while(true)
                                          {
                                             §§push(this.§?]§);
                                             addr166:
                                             loop14:
                                             while(_loc6_ || param1)
                                             {
                                                §§push(!§§pop());
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   continue loop12;
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      continue loop14;
                                                   }
                                                   §§push(!§§pop());
                                                   while(!(_loc7_ && _loc3_))
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            addr143:
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!(_loc6_ || param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop19;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr412);
                                                                  addr153:
                                                               }
                                                               §§goto(addr580);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  continue loop13;
                                                                  §§goto(addr143);
                                                               }
                                                               addr198:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(_loc6_ || _loc3_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        this.§;!%§();
                                                                        addr119:
                                                                        break;
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr153);
                                                                  }
                                                               }
                                                               §§goto(addr119);
                                                            }
                                                            addr104:
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§goto(addr605);
                                                }
                                             }
                                             §§goto(addr499);
                                          }
                                       }
                                       §§goto(addr558);
                                    }
                                    break;
                                 }
                                 §§goto(addr174);
                              }
                              §§goto(addr479);
                           }
                           else
                           {
                              §§goto(addr421);
                           }
                        }
                     }
                     §§goto(addr377);
                  }
                  §§goto(addr285);
               }
               else
               {
                  §§push(Math.random() * §]3§);
                  if(_loc6_)
                  {
                     §§goto(addr222);
                  }
               }
               §§goto(addr385);
            }
            §§goto(addr58);
         }
         §§goto(addr545);
      }
      
      public function §;!%§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.mName);
         loop0:
         while(true)
         {
            §§push("BIRD_SARDINE");
            loop1:
            while(true)
            {
               if(§§pop() == §§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     break;
                  }
                  while(true)
                  {
                  }
                  addr329:
               }
               while(true)
               {
                  this.§;l§ = 0;
                  this.§`+§ = §[l§;
                  this.§2u§ = 0;
                  loop4:
                  while(true)
                  {
                     §§push(this);
                     §§push(0.75);
                     if(!(_loc2_ && param1))
                     {
                        §§push(Math.random() * 1.5);
                        if(!_loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc3_))
                           {
                              addr298:
                              §§push(-§§pop());
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(param1);
                              }
                              §§pop().§]I§ = §§pop();
                              while(_loc3_)
                              {
                                 this.§"E§ = this.§]I§;
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§`+§);
                                    if(_loc3_ || param1)
                                    {
                                       §§push(§§pop() * (Math.abs(this.§]I§) / 3));
                                    }
                                    §§pop().§`+§ = §§pop();
                                    while(true)
                                    {
                                       this.§<D§ = this.§`+§;
                                       addr225:
                                       while(!_loc2_)
                                       {
                                          §§push(this.mName);
                                          continue loop0;
                                       }
                                       continue loop6;
                                       addr134:
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          §§goto(addr18);
                                       }
                                    }
                                 }
                                 §§pop().§?!N§ = §§pop();
                                 if(_loc2_ && this)
                                 {
                                    continue;
                                 }
                                 §§push(this);
                                 if(!_loc2_)
                                 {
                                    if(Math.random() > 0.5)
                                    {
                                       addr31:
                                       §§push(this.§?!N§);
                                       if(!_loc2_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc3_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(Number(0));
                                    }
                                    §§pop().§?!N§ = §§pop();
                                    if(_loc2_ && _loc3_)
                                    {
                                       addr129:
                                       this.§?!N§ = 0;
                                       if(_loc3_)
                                       {
                                          §§goto(addr134);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr18);
                                 }
                                 §§goto(addr31);
                              }
                              §§goto(addr329);
                           }
                           §§goto(addr298);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr298);
                     loop17:
                     while(true)
                     {
                        if(!(_loc3_ || _loc3_))
                        {
                           continue loop4;
                        }
                        addr196:
                        §§push(this.mName);
                        if(!(_loc2_ && this))
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§push("RED_BIG");
                           if(_loc3_ || _loc2_)
                           {
                              addr112:
                              §§push(§§pop() == §§pop());
                              if(_loc3_ || this)
                              {
                                 if(!(_loc3_ || this))
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§pop();
                                       §§push(this.mName);
                                       addr145:
                                       while(true)
                                       {
                                          §§push("BIRD_BLACK");
                                          addr146:
                                          addr208:
                                          while(!(_loc2_ && _loc2_))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(!§§pop())
                                                         {
                                                            if(this.§`+§ < 350)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop17;
                                                               }
                                                               this.§?!N§ = 0;
                                                            }
                                                            else
                                                            {
                                                               §§push(this);
                                                               if(!_loc2_)
                                                               {
                                                                  if(Math.random() > 0.5)
                                                                  {
                                                                     addr61:
                                                                     §§push(1);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc2_)
                                                                        {
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr69:
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr70);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(-1);
                                                                  }
                                                                  §§goto(addr69);
                                                               }
                                                               §§goto(addr61);
                                                            }
                                                            addr18:
                                                            return;
                                                         }
                                                         break loop17;
                                                         addr127:
                                                      }
                                                      while(_loc3_ || _loc2_)
                                                      {
                                                         §§pop();
                                                         continue loop17;
                                                         §§goto(addr112);
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         break loop18;
                                                         §§goto(addr181);
                                                      }
                                                      addr181:
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop13;
                                                   }
                                                   §§goto(addr171);
                                                }
                                                addr171:
                                             }
                                             §§goto(addr181);
                                          }
                                          while(!(_loc2_ && this))
                                          {
                                             §§goto(addr216);
                                             §§push(§§pop() == §§pop());
                                             §§goto(addr146);
                                          }
                                          continue loop1;
                                          §§goto(addr196);
                                       }
                                    }
                                 }
                                 §§goto(addr127);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr129);
                  }
               }
            }
            return;
         }
      }
      
      public function §%!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§8A§);
            while(true)
            {
               §§push(this.§]!B§);
               §§push(§1r§.§[M§);
               addr113:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr114:
                  while(true)
                  {
                     §§pop().x = §§pop();
                  }
               }
            }
            addr109:
         }
         loop3:
         while(true)
         {
            §§push(this.§8A§);
            loop4:
            while(true)
            {
               if(!_loc1_)
               {
                  §§push(this.§5G§);
                  while(true)
                  {
                     §§push(this.§2u§);
                     if(_loc2_)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(§1r§.§[M§);
                     }
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() / §§pop());
                        while(true)
                        {
                           §§pop().y = §§pop();
                           addr99:
                           while(!(_loc1_ && this))
                           {
                              continue loop4;
                           }
                           continue loop3;
                        }
                        addr98:
                     }
                     addr35:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        break;
                     }
                     §§pop().rotation = §§pop() * Math.PI;
                     if(!_loc1_)
                     {
                        return;
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr114);
               }
               else
               {
                  §§goto(addr109);
               }
            }
         }
      }
      
      public function §'!3§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         this.§;m§ = true;
         this.§?]§ = false;
         while(true)
         {
            this.§?!D§ = false;
            loop1:
            while(true)
            {
               this.§;l§ = 0;
               this.§7g§ = 0;
               while(true)
               {
                  this.§`+§ = 0;
                  while(!_loc1_)
                  {
                     this.§`+§ = 0;
                     loop4:
                     while(true)
                     {
                        this.§2u§ = 0;
                        while(true)
                        {
                           this.§ !'§ = 0;
                           addr76:
                           while(!(_loc1_ && this))
                           {
                              continue loop4;
                           }
                        }
                     }
                     if(_loc2_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            if(_loc2_ || this)
            {
               return;
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§]!B§) * (param1 - this.§]!B§) + (param2 - this.§5G§) * (param2 - this.§5G§));
         if(!(_loc4_ && param2))
         {
            §§push(_loc3_);
            §§push(this.§9!I§);
            if(!_loc4_)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc5_)
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
                  return false;
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
         if(!_loc5_)
         {
            §§push(this.§]!B§);
            loop0:
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           loop12:
                           while(true)
                           {
                              §§push(this.§]!B§);
                              loop13:
                              while(true)
                              {
                                 §§push(param4);
                                 loop14:
                                 while(true)
                                 {
                                    if(!(_loc6_ || this))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() <= §§pop());
                                    if(_loc6_ || param3)
                                    {
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc6_ || this)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  break;
                                                               }
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  §§push(this.§5G§);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        addr32:
                                                                        §§push(param2);
                                                                        if(!(_loc5_ && param3))
                                                                        {
                                                                           if(!(_loc5_ && param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        addr80:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >= §§pop());
                                                                           if(_loc5_ && this)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop10;
                                                                           §§goto(addr32);
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  continue loop0;
                                                                  addr120:
                                                               }
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§5G§);
                                                               continue loop0;
                                                            }
                                                            addr154:
                                                         }
                                                         return §§pop();
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop1;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                       addr150:
                                    }
                                    §§goto(addr153);
                                 }
                              }
                           }
                           addr162:
                        }
                        §§goto(addr150);
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§]!B§);
         loop0:
         while(true)
         {
            §§push(param1);
            addr127:
            while(true)
            {
               §§push(§§pop() == §§pop());
               if(_loc4_ && this)
               {
                  continue loop0;
               }
               §§push(!§§pop());
               if(!!§§pop())
               {
                  continue loop0;
               }
               addr119:
               addr120:
               if(§§pop())
               {
                  addr122:
                  _loc3_ = true;
                  addr121:
               }
               this.§]!B§ = param1;
               this.§5G§ = param2;
               this.§7g§ = 100;
               addr79:
               if(!(_loc4_ && param2))
               {
                  this.§%!8§();
                  addr52:
                  §§push(_loc3_);
                  if(_loc5_ || param1)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           if(!(_loc4_ && this))
                           {
                              this.§'Y§.§;!O§();
                              §§goto(addr46);
                           }
                           §§goto(addr79);
                        }
                        §§goto(addr46);
                     }
                     addr46:
                     if(!_loc5_)
                     {
                        §§goto(addr52);
                     }
                     return;
                  }
                  §§goto(addr120);
               }
               §§goto(addr121);
            }
         }
      }
      
      public function §[c§() : §1!A§
      {
         return this.§<!8§;
      }
      
      public function get §%!G§() : Number
      {
         return this.§`+§;
      }
      
      public function get §?c§() : Number
      {
         return this.§7g§;
      }
      
      public function set §?c§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7g§ = param1;
         }
      }
      
      public function get §<P§() : Number
      {
         return this.§&!N§;
      }
      
      public function get §8!'§() : Boolean
      {
         return this.§?]§;
      }
      
      public function get radius() : Number
      {
         return this.§9!I§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §<P§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§&!N§ = param1;
         }
      }
      
      public function get §4!9§() : Number
      {
         return this.§-F§;
      }
      
      public function set §4!9§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-F§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§6-§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function get §8!&§() : Number
      {
         return this.§,&§;
      }
      
      public function get §4%§() : Number
      {
         return this.§60§;
      }
   }
}
