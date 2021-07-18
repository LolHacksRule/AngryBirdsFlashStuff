package §,h§
{
   import § `§.§5L§;
   import § `§.§6!=§;
   import § `§.§^1§;
   import §!X§.§86§;
   import §!X§.§@X§;
   import §0!G§.b2Vec2;
   import §]!B§.Texture;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §default§.§<A§;
   import flash.filters.GlowFilter;
   
   public class §0q§
   {
      
      public static const §<!6§:Number = 1000;
      
      public static const §?r§:Number = 500;
      
      private static var §'+§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §<!6§ = 1000;
            while(true)
            {
               §?r§ = 500;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            §'+§ = null;
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §]N§:§+0§;
      
      public var §6H§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §>7§:Number;
      
      public var §^!W§:Number;
      
      public var §?!G§:int = -1;
      
      private var §^[§:String;
      
      private var §<,§:§^1§;
      
      private var §"h§:§^1§;
      
      private var §#3§:§`!C§;
      
      private var §1z§:Number = 0;
      
      private var §4!<§:Number = 0;
      
      public var §&!&§:int = -1;
      
      private var §`&§:int = -1;
      
      private var §1! §:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §;o§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §;!D§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §>-§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §1!4§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,!1§:String = "fly";
      
      public var § !'§:String = "fly_yell";
      
      public var §'!D§:GlowFilter;
      
      private var §9x§:Vector.<§@X§>;
      
      private var §[!7§:§^1§;
      
      private var §?!N§:Sprite = null;
      
      private var §>`§:§86§;
      
      public function §0q§(param1:§+0§, param2:Sprite, param3:§86§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§>`§ = param3;
               loop1:
               while(true)
               {
                  this.§]N§ = param1;
                  loop2:
                  do
                  {
                     this.§^[§ = this.§]N§.§2!1§;
                     while(!_loc5_)
                     {
                        if(_loc4_)
                        {
                           this.§9x§ = new Vector.<§@X§>();
                           do
                           {
                              this.§?!N§ = param2;
                           }
                           while(!(_loc4_ || this));
                           
                           if(_loc4_ || param2)
                           {
                              continue loop2;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  while(!(_loc4_ || param2));
                  
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§@X§ = null;
         if(!_loc3_)
         {
            this.§-q§();
            if(_loc2_ || _loc1_)
            {
               §§goto(addr40);
            }
            §§goto(addr43);
         }
         addr40:
         if(this.§9x§)
         {
            addr43:
            while(this.§9x§.length > 0)
            {
               _loc1_ = this.§9x§.pop();
               if(_loc2_ || _loc3_)
               {
                  _loc1_.dispose();
               }
            }
            if(_loc2_)
            {
               this.§9x§ = null;
            }
         }
      }
      
      public function §7!]§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.mW = param3;
            while(true)
            {
               this.mH = param4;
               addr60:
               if(_loc5_ || param3)
               {
                  this.§-+§();
                  addr67:
                  if(!(_loc5_ || param3))
                  {
                     while(!(_loc6_ && this))
                     {
                        §§goto(addr60);
                        §§goto(addr67);
                     }
                     while(_loc5_ || param2)
                     {
                        this.§^!W§ = param2;
                        §§goto(addr53);
                     }
                     addr53:
                     while(true)
                     {
                        this.§?!G§ = param1;
                        §§goto(addr72);
                     }
                     addr72:
                     addr94:
                  }
                  return;
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §+J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§>7§ = §§pop();
                  loop1:
                  do
                  {
                     if(this.§>7§ < 1)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_ && param1)
                              {
                                 this.§>7§ = 1;
                              }
                              else
                              {
                                 addr111:
                                 addr108:
                              }
                              continue loop0;
                              return;
                           }
                           while(true)
                           {
                              this.§>7§ = 1 / this.§>7§;
                           }
                        }
                        loop2:
                        while(true)
                        {
                           addr24:
                           while(true)
                           {
                              this.§>7§ = Math.min(11,this.§>7§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr24);
                  }
                  while(_loc2_);
                  
                  if(_loc3_ || this)
                  {
                     return;
                  }
                  §§goto(addr111);
               }
            }
            §§goto(addr108);
         }
         §§goto(addr68);
      }
      
      public function §`@§(param1:§5L§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§6!=§ = null;
         var _loc3_:Texture = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§]N§.isGround());
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     §§goto(addr73);
                  }
                  else
                  {
                     addr74:
                     while(true)
                     {
                     }
                     addr74:
                  }
               }
               loop0:
               while(true)
               {
                  this.§[!7§ = param1.§>f§("SPARKLES");
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        this.§<,§ = param1.§>f§(this.§^[§);
                        while(_loc6_)
                        {
                           this.§"h§ = this.§<,§;
                           if(_loc5_)
                           {
                              continue;
                           }
                           if(_loc5_ && _loc2_)
                           {
                              break loop2;
                           }
                           if(false)
                           {
                              continue loop2;
                           }
                           var _loc4_:* = Number(1);
                           if(!(_loc5_ && this))
                           {
                              §§push(this.§"h§);
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    addr92:
                                    _loc2_ = this.§"h§.getFrame(0);
                                    addr90:
                                    if(_loc6_)
                                    {
                                       §§push(_loc2_.scale);
                                       if(!_loc5_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    _loc3_ = _loc2_.texture;
                                    if(!_loc5_)
                                    {
                                       addr117:
                                       this.§#3§ = new §`!C§(_loc3_);
                                       if(!_loc5_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                addr339:
                                                this.§#3§.x = -_loc2_.pivotX;
                                                addr340:
                                                addr336:
                                                §§push(this.§#3§);
                                                §§push(_loc2_.pivotY);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   addr313:
                                                   §§pop().y = -§§pop();
                                                   addr314:
                                                   §§push(this.§#3§);
                                                   §§push(_loc4_);
                                                   if(_loc6_ || param1)
                                                   {
                                                      §§pop().scaleX = §§pop();
                                                      addr232:
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§push(this.§#3§);
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§pop().scaleY = §§pop();
                                                                           this.mW = this.§#3§.width / 2;
                                                                           addr194:
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              this.mH = this.§#3§.height / 2;
                                                                              addr171:
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    this.§?!N§.addChild(this.§#3§);
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       if(!(_loc5_ && _loc2_))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          return true;
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    §§goto(addr171);
                                                                                 }
                                                                                 addr263:
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    §§goto(addr314);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              §§goto(addr194);
                                                                           }
                                                                           addr219:
                                                                           §§goto(addr219);
                                                                        }
                                                                        addr298:
                                                                        §§pop().x = §§pop();
                                                                        §§push(this.§#3§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              addr278:
                                                                              §§push(this.§#3§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 addr253:
                                                                                 §§push(-§§pop().height);
                                                                                 §§push(2);
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    addr262:
                                                                                    §§pop().y = §§pop() / §§pop();
                                                                                    §§goto(addr263);
                                                                                 }
                                                                                 addr297:
                                                                                 §§goto(addr298);
                                                                                 §§push(§§pop() / §§pop());
                                                                              }
                                                                              §§push(-§§pop().width);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       §§goto(addr297);
                                                                                       §§push(2);
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 §§goto(addr313);
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                           §§goto(addr336);
                                                                        }
                                                                        §§goto(addr339);
                                                                        addr299:
                                                                     }
                                                                     §§goto(addr262);
                                                                  }
                                                                  §§goto(addr313);
                                                               }
                                                               addr276:
                                                               §§goto(addr278);
                                                               §§push(this.§#3§);
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr313);
                                                      }
                                                      §§goto(addr299);
                                                   }
                                                   §§goto(addr253);
                                                }
                                                addr338:
                                                §§goto(addr338);
                                                addr334:
                                             }
                                             §§goto(addr339);
                                          }
                                          else
                                          {
                                             §§push(this.§#3§);
                                          }
                                          §§goto(addr276);
                                       }
                                       §§goto(addr334);
                                    }
                                    §§goto(addr339);
                                 }
                                 else
                                 {
                                    _loc3_ = this.§>`§.§=]§.§-!D§();
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr92);
                           }
                           §§goto(addr90);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            addr73:
            return false;
         }
         §§goto(addr74);
      }
      
      public function §`!9§(param1:§<A§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§ !+§);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(§<A§.§4!S§);
               if(!(_loc5_ && param1))
               {
                  §§push(_loc4_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || this)
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
                           if(_loc6_ || this)
                           {
                              addr133:
                           }
                        }
                        addr149:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1.§1,§();
                              _loc3_ = _loc2_[0];
                              if(!_loc5_)
                              {
                                 §§push(this);
                                 §§push(_loc3_.x);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() / §86§.§7!4§);
                                 }
                                 §§pop().§1z§ = §§pop();
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    addr52:
                                    §§push(this);
                                    §§push(_loc3_.y);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() / §86§.§7!4§);
                                    }
                                    §§pop().§4!<§ = §§pop();
                                    if(_loc6_ || _loc2_)
                                    {
                                    }
                                    break;
                                 }
                                 addr150:
                                 this.§+!4§();
                                 break;
                              }
                              §§goto(addr52);
                           case 1:
                              §§goto(addr150);
                           default:
                              §§goto(addr150);
                        }
                        return;
                        addr148:
                     }
                     else
                     {
                        §§push(§<A§.§%E§);
                        if(_loc6_ || param1)
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
                  §§goto(addr148);
               }
               §§goto(addr133);
            }
            §§goto(addr125);
         }
         §§goto(addr149);
      }
      
      public function §^Y§() : Array
      {
         return §-!?§.§^Y§(null,this.§]N§.§29§());
      }
      
      public function §#U§() : Array
      {
         return §-!?§.§#U§(null,this.§]N§.§29§());
      }
      
      public function §?!Y§() : Array
      {
         return §-!?§.§?!Y§(null);
      }
      
      public function §-+§() : void
      {
      }
      
      public function §%!H§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§?!N§.scaleX = this.§?!N§.scaleY = param1;
         }
      }
      
      public function §+!4§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6!=§ = null;
         if(_loc5_)
         {
            §§push(this.§<,§);
            if(_loc5_)
            {
               if(!§§pop())
               {
                  if(_loc5_ || _loc1_)
                  {
                     return;
                  }
                  addr297:
               }
               else
               {
                  §§push(this.§;!D§);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           this.§1! § = 1;
                           addr745:
                           §§push(this.§"h§);
                           if(_loc5_)
                           {
                              if(§§pop())
                              {
                                 addr752:
                                 _loc1_ = this.§"h§.getFrame(this.§1! §);
                                 if(_loc5_ || _loc1_)
                                 {
                                    §§push(this.§#3§);
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                loop88:
                                                while(true)
                                                {
                                                   §§push(Boolean(_loc1_));
                                                   if(_loc5_)
                                                   {
                                                      loop69:
                                                      while(§§pop())
                                                      {
                                                         loop70:
                                                         while(true)
                                                         {
                                                            §§push(this.§#3§);
                                                            while(true)
                                                            {
                                                               §§pop().texture = _loc1_.texture;
                                                               loop72:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     continue loop88;
                                                                  }
                                                                  §§push(this.§#3§);
                                                                  loop73:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc1_.pivotX);
                                                                     loop74:
                                                                     while(true)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        loop75:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§1z§);
                                                                           loop76:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              loop77:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().x = §§pop();
                                                                                 loop78:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§#3§);
                                                                                    loop79:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc1_.pivotY);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(-§§pop());
                                                                                       loop80:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§4!<§);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() - §§pop());
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             addr852:
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§#3§);
                                                                                                   continue loop79;
                                                                                                }
                                                                                                continue loop72;
                                                                                             }
                                                                                             continue loop78;
                                                                                             addr781:
                                                                                             if(!(_loc5_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop80;
                                                                                             }
                                                                                             if(_loc4_ && _loc2_)
                                                                                             {
                                                                                                continue loop77;
                                                                                             }
                                                                                             addr797:
                                                                                             §§pop().scaleY = §§pop();
                                                                                             if(!(_loc5_ || this))
                                                                                             {
                                                                                                loop86:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(this.§#3§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc4_)
                                                                                                      {
                                                                                                         continue loop73;
                                                                                                      }
                                                                                                      addr772:
                                                                                                      §§push(_loc1_.scale);
                                                                                                      if(_loc4_ && this)
                                                                                                      {
                                                                                                         while(_loc5_)
                                                                                                         {
                                                                                                            §§pop().scaleX = §§pop();
                                                                                                            continue loop86;
                                                                                                            §§goto(addr772);
                                                                                                         }
                                                                                                         continue loop75;
                                                                                                         addr832:
                                                                                                      }
                                                                                                      §§goto(addr781);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr852);
                                                                                                   }
                                                                                                }
                                                                                                continue loop79;
                                                                                             }
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue loop72;
                                                                                             }
                                                                                             if(!(_loc5_ || _loc2_))
                                                                                             {
                                                                                                continue loop70;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break loop69;
                                                                                                }
                                                                                                §§goto(addr816);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop76;
                                                                                    }
                                                                                    continue loop74;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop88;
                                                            }
                                                         }
                                                      }
                                                      addr905:
                                                      return;
                                                      addr871:
                                                   }
                                                   break;
                                                }
                                             }
                                             addr903:
                                          }
                                          §§goto(addr871);
                                       }
                                       §§goto(addr903);
                                    }
                                 }
                                 §§goto(addr814);
                              }
                              §§goto(addr905);
                           }
                           §§goto(addr752);
                           addr180:
                        }
                        else
                        {
                           loop48:
                           while(true)
                           {
                              this.mIsScreaming = true;
                              addr670:
                              loop3:
                              while(true)
                              {
                                 this.mIsFlying = true;
                                 loop38:
                                 while(true)
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       break loop3;
                                    }
                                    loop4:
                                    while(!_loc4_)
                                    {
                                       §§push(this.§<,§);
                                       loop16:
                                       while(true)
                                       {
                                          §§push(this.§ !'§);
                                          addr676:
                                          loop15:
                                          while(true)
                                          {
                                             §§push(§§pop().getSubAnimation(§§pop()));
                                             addr677:
                                             loop5:
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop6:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      loop7:
                                                      while(!§§pop())
                                                      {
                                                         addr632:
                                                         §§push(this.mTryToScream);
                                                         loop1:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc1_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(0);
                                                                  loop59:
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() > §§pop());
                                                                     loop60:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        loop61:
                                                                        while(!_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§pop();
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§<,§);
                                                                                          loop34:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ || _loc3_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§>-§);
                                                                                                   loop91:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                         loop36:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr621:
                                                                                                               loop0:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push(this.mTryToBlink);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop59;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           loop35:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc4_ && this)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 loop66:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          loop40:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                loop44:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop33;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc5_ || _loc1_))
                                                                                                                                                      {
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§<,§);
                                                                                                                                                      loop95:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            continue loop34;
                                                                                                                                                         }
                                                                                                                                                         §§push(this.§1!4§);
                                                                                                                                                         loop94:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc5_ || _loc1_))
                                                                                                                                                            {
                                                                                                                                                               continue loop15;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                            loop93:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop36;
                                                                                                                                                               }
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop32;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc4_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc5_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr698:
                                                                                                                                                                     if(_loc5_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr742:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    addr744:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§<,§);
                                                                                                                                                                                       addr723:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§;o§);
                                                                                                                                                                                          addr725:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                             addr726:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr743:
                                                                                                                                                                              }
                                                                                                                                                                              addr727:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr728:
                                                                                                                                                                                 addr729:
                                                                                                                                                                                 while(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr706:
                                                                                                                                                                                    §§push(this.mTryToScream);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop59;
                                                                                                                                                                                       §§goto(addr706);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 this.§"h§ = this.§<,§.getSubAnimation(this.§;o§);
                                                                                                                                                                                 break loop4;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr741:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        break loop61;
                                                                                                                                                                     }
                                                                                                                                                                     addr698:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     continue loop4;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               loop67:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr523:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.mTryToFly);
                                                                                                                                                                        loop28:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_ && _loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc4_ && _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop61;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop29:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop35;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr457:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§<,§);
                                                                                                                                                                                                         if(_loc4_ && this)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop95;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(this.§,!1§);
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop94;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop91;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop93;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                            if(_loc5_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop28;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop29;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr726);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr456:
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr741);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr740:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr727);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                             addr447:
                                                                                                                                                                                          }
                                                                                                                                                                                          loop47:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc5_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc4_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop7;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§"h§ = this.§<,§.getSubAnimation(this.§,!1§);
                                                                                                                                                                                                            addr375:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc4_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_ || _loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc5_ || _loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.mIsFlying = true;
                                                                                                                                                                                                                           if(_loc5_ || _loc1_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop48;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr297);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.mTryToFly);
                                                                                                                                                                                                                                    addr693:
                                                                                                                                                                                                                                    while(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() > 0);
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr698);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr728);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr714:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break loop47;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr277:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr729);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break loop3;
                                                                                                                                                                                                                  addr719:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr589:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop3;
                                                                                                                                                                                                                     addr596:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop3;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop51:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr469:
                                                                                                                                                                                                               if(_loc5_ || _loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop3;
                                                                                                                                                                                                                     addr478:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr622:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§"h§ = this.§<,§.getSubAnimation(this.§>-§);
                                                                                                                                                                                                                     addr629:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.mIsScreaming = true;
                                                                                                                                                                                                                        §§goto(addr589);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§"h§ = this.§<,§.getSubAnimation(this.§1!4§);
                                                                                                                                                                                                                     §§goto(addr469);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr524:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.mIsBlinking = true;
                                                                                                                                                                                                                  continue loop51;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr744);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr728);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr457);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§"h§ = this.§<,§;
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr277);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break loop3;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr375);
                                                                                                                                                                                                §§goto(addr729);
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             §§goto(addr375);
                                                                                                                                                                                             addr341:
                                                                                                                                                                                             if(!(_loc4_ && _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop60;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr752);
                                                                                                                                                                                          §§goto(addr729);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr436:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§goto(addr714);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr713:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr697);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr497);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr698);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr447);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr524);
                                                                                                                                                                     continue loop67;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr497:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr629);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr713);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr522);
                                                                                                                                    }
                                                                                                                                    §§goto(addr742);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr712);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr622);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr725);
                                                                                                   }
                                                                                                }
                                                                                                addr607:
                                                                                             }
                                                                                             §§goto(addr723);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr693);
                                                                                 }
                                                                              }
                                                                              §§goto(addr620);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           §§goto(addr700);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr710:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr711);
                                                                  }
                                                               }
                                                               addr642:
                                                            }
                                                            §§goto(addr709);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§"h§ = this.§<,§.getSubAnimation(this.§ !'§);
                                                         continue loop48;
                                                      }
                                                   }
                                                   §§goto(addr743);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    this.mIsSpecial = true;
                                    §§goto(addr719);
                                 }
                              }
                              §§goto(addr745);
                           }
                        }
                        §§goto(addr745);
                     }
                     else
                     {
                        §§push(this.§]N§);
                        if(_loc5_ || this)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc5_)
                           {
                              §§push(0);
                              if(_loc5_)
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§pop();
                                             if(_loc5_)
                                             {
                                                §§push(this.§<,§);
                                                if(_loc5_ || this)
                                                {
                                                   §§push(this.§;o§);
                                                   if(_loc5_ || _loc2_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_)
                                                         {
                                                            addr104:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  this.§"h§ = this.§<,§.getSubAnimation(this.§;o§);
                                                                  if(!_loc4_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§1! § = this.§"h§.getFrameCount() * this.§]N§.getSpecialAnimationProgress();
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(this.§1! § == this.§"h§.getFrameCount() - 1);
                                                                           if(!(_loc4_ && _loc1_))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc4_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             addr204:
                                                                                             §§push(this.§]N§.getSpecialAnimationTimeLeft());
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(100);
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() > §§pop());
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      addr223:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            var _loc2_:*;
                                                                                                            §§push((_loc2_ = this).§1! §);
                                                                                                            if(_loc5_ || _loc1_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            var _loc3_:* = §§pop();
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               _loc2_.§1! § = _loc3_;
                                                                                                            }
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               addr737:
                                                                                                               §§goto(addr745);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr629);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr368);
                                                                                                      }
                                                                                                      §§goto(addr737);
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                                §§goto(addr710);
                                                                                             }
                                                                                             §§goto(addr543);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr180);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr670);
                                                                                    }
                                                                                    §§goto(addr621);
                                                                                 }
                                                                                 §§goto(addr223);
                                                                              }
                                                                              §§goto(addr436);
                                                                           }
                                                                           §§goto(addr523);
                                                                        }
                                                                        §§goto(addr596);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                            }
                                                            §§goto(addr740);
                                                         }
                                                         §§goto(addr621);
                                                      }
                                                      §§goto(addr677);
                                                   }
                                                   §§goto(addr676);
                                                }
                                                §§goto(addr674);
                                             }
                                             §§goto(addr457);
                                          }
                                          §§goto(addr711);
                                       }
                                       §§goto(addr104);
                                    }
                                    §§goto(addr649);
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr546);
                           }
                           §§goto(addr642);
                        }
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr419);
               }
               §§goto(addr745);
            }
            §§goto(addr607);
         }
         §§goto(addr457);
      }
      
      public function §5!Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§?!N§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§&!&§);
            if(_loc2_)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§2!W§();
                     addr38:
                     §§push(0);
                  }
               }
               §§goto(addr38);
            }
            var _loc1_:* = §§pop();
            if(!_loc3_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§]N§.§,!&§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() / this.§]N§.§+?§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§&!&§);
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr131:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr102);
         }
         §§goto(addr38);
      }
      
      public function §2!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§<,§)
            {
               if(_loc1_)
               {
                  this.§&!&§ = this.§<,§.getFrameCount();
               }
            }
         }
      }
      
      public function §[s§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§'!D§ = new GlowFilter();
            while(true)
            {
               this.§'!D§.blurX = param2;
            }
            addr82:
         }
         while(true)
         {
            this.§'!D§.blurY = param3;
            for(; !(_loc4_ && param1); this.§'!D§.color = param1,if(_loc5_)
            {
               return;
            })
            {
               if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr82);
            }
         }
      }
      
      public function §-q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'!D§ = null;
         }
      }
      
      public function §2!>§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§]N§.§'!+§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc4_)
               {
                  continue;
               }
               if(_loc4_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§8g§(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function §,r§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§9x§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue;
                        }
                        this.§8g§(_loc2_);
                        loop2:
                        while(true)
                        {
                           break loop1;
                           addr72:
                           while(_loc4_ && _loc3_)
                           {
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && this))
                        {
                           addr71:
                           §§push(§§pop() - 1);
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                           addr71:
                        }
                        §§goto(addr71);
                        §§goto(addr93);
                     }
                     addr61:
                  }
                  §§goto(addr72);
               }
               else
               {
                  this.§9x§[_loc2_].updateLifeTime(param1);
                  §§goto(addr112);
               }
            }
            §§goto(addr71);
         }
      }
      
      private function §8g§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(!this.§[!7§)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         var _loc2_:int = 0;
         if(_loc7_)
         {
            if(Math.random() < 0.5)
            {
               if(!(_loc6_ && _loc2_))
               {
                  addr40:
                  _loc2_ = 1;
               }
            }
            var _loc3_:§6!=§ = this.§[!7§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(_loc7_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§@X§ = null;
            if(_loc7_)
            {
               if(param1 < this.§9x§.length)
               {
                  addr73:
                  (_loc5_ = this.§9x§[param1]).§57§(_loc4_);
                  if(_loc7_ || _loc2_)
                  {
                     _loc5_.§0!§(_loc3_.texture);
                     if(_loc7_ || param1)
                     {
                        addr131:
                        §§push(_loc5_.image);
                        if(_loc7_ || this)
                        {
                           §§push(_loc3_.pivotX);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(-§§pop());
                              if(_loc7_)
                              {
                                 §§push(this.§#3§);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(§§pop().width / 2);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc6_ && param1))
                                       {
                                          §§push(Math.random() * this.§#3§.width);
                                          if(_loc7_ || _loc2_)
                                          {
                                             addr192:
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_ || param1)
                                             {
                                                §§pop().x = §§pop();
                                                if(!_loc6_)
                                                {
                                                   addr207:
                                                   §§push(_loc5_.image);
                                                   §§push(-_loc3_.pivotY);
                                                   if(!_loc6_)
                                                   {
                                                      addr212:
                                                      addr210:
                                                      §§push(this.§#3§.height / 2);
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §§goto(addr247);
                                                      }
                                                      addr247:
                                                      addr222:
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(Math.random() * this.§#3§.height);
                                                      }
                                                      §§pop().y = §§pop();
                                                      return;
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                }
                                             }
                                             §§goto(addr247);
                                          }
                                          §§goto(addr222);
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr192);
                                 }
                                 §§goto(addr212);
                              }
                              §§goto(addr210);
                           }
                        }
                        §§goto(addr207);
                        addr100:
                     }
                     §§goto(addr247);
                  }
                  §§goto(addr100);
               }
               else
               {
                  _loc5_ = new §@X§(_loc3_.texture,_loc4_);
                  if(!_loc6_)
                  {
                     this.§9x§.push(_loc5_);
                     if(_loc7_)
                     {
                        this.§?!N§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr131);
            }
            §§goto(addr73);
         }
         §§goto(addr40);
      }
      
      public function §"7§() : §`!C§
      {
         return this.§#3§;
      }
   }
}
