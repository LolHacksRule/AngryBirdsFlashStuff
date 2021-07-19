package §[x§
{
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §4N§.§&!@§;
   import §4N§.§2D§;
   import §4N§.§7E§;
   import §9_§.§+>§;
   import §;8§.§4m§;
   import §[P§.Texture;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §,1§
   {
      
      public static const §??§:String = "ChannelSlingshot";
      
      public static const §8!C§:Number = 900;
      
      public static const §&H§:Number = 200;
      
      public static const §&!3§:Number = 200;
      
      public static const §,P§:Number = 1500;
      
      public static const §0y§:Number = 5000;
      
      public static const §^!5§:Number = 1000;
      
      public static const §9@§:Number = 1000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §??§ = "ChannelSlingshot";
            §8!C§ = 900;
            §&H§ = 200;
         }
         loop0:
         while(true)
         {
            §&!3§ = 200;
            while(true)
            {
               §,P§ = 1500;
               addr78:
               while(!_loc2_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      protected var mName:String;
      
      protected var §-Y§:Number;
      
      protected var §%!;§:Number;
      
      protected var §+<§:Number;
      
      protected var §,8§:Number;
      
      private var §><§:§7E§;
      
      protected var §]!=§:Number;
      
      protected var §%e§:Number = 1;
      
      private var §1-§:Sprite;
      
      protected var §,k§:§?!C§;
      
      private var §6-§:§1!,§;
      
      protected var § 2§:§9"§;
      
      private var § !#§:Number;
      
      private var §,d§:Boolean = false;
      
      private var §5a§:Boolean = false;
      
      protected var §0I§:Boolean = false;
      
      private var §-f§:Number;
      
      private var §0M§:Number = 0;
      
      private var §=p§:Number = 0;
      
      private var §7!E§:Number = 0;
      
      private var §&y§:Number = 1000;
      
      private var §1a§:Number;
      
      private var §3q§:Number;
      
      private var §7h§:int;
      
      private var §`<§:Number = 0;
      
      protected var §!!&§:Number;
      
      protected var §39§:Number;
      
      private var §"G§:Number = 1;
      
      private var §^z§:Number = 0;
      
      private var §,E§:b2Vec2;
      
      private var §,&§:Number = 1;
      
      public function §,1§(param1:§9"§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super();
            this.§ 2§ = param1;
         }
         while(true)
         {
            this.§1-§ = param2;
            this.mName = param3;
            this.§><§ = §&!@§.§9B§(this.mName).§@,§;
            this.§-Y§ = param4;
            this.§%!;§ = param5;
            while(_loc7_)
            {
               this.§+<§ = param4;
               this.§,8§ = param5;
               this.§]!=§ = 0;
               do
               {
                  this.§,d§ = false;
                  this.§5a§ = false;
                  this.§0M§ = 0;
               }
               while(_loc6_);
               
               this.§`!4§();
               do
               {
                  this.§!!&§ = 0;
               }
               while(_loc6_ && param3);
               
               if(!(_loc6_ && param2))
               {
                  return;
               }
            }
         }
      }
      
      public function §"Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§,d§ = true;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1-§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§1-§);
                     addr70:
                     while(true)
                     {
                        §§pop().dispose();
                        do
                        {
                           this.§1-§ = null;
                        }
                        while(!(_loc2_ || this));
                        
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr68:
               }
               return;
            }
            §§goto(addr70);
         }
         §§goto(addr68);
      }
      
      public function §=x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§5a§);
         loop0:
         while(true)
         {
            §§push(!§§pop());
            if(!_loc3_)
            {
               if(§§pop())
               {
                  while(!§§pop())
                  {
                     §§push(this.§%e§);
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        addr331:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 this.§7!E§ = 0;
                                 this.§`<§ = 0;
                                 while(true)
                                 {
                                    this.§]!=§ = 0;
                                    loop6:
                                    while(!_loc3_)
                                    {
                                       this.§3q§ = 0;
                                       this.§%e§ = 0;
                                       while(true)
                                       {
                                       }
                                       addr167:
                                       if(!(_loc3_ && param1))
                                       {
                                          §§push(this);
                                          §§push(this.§-f§);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() - param1);
                                          }
                                          §§pop().§-f§ = §§pop();
                                          loop13:
                                          while(true)
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop4;
                                             }
                                             addr131:
                                             §§push(this.§-f§);
                                             if(!(_loc3_ && param1))
                                             {
                                                continue loop2;
                                             }
                                             addr303:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(this);
                                                   §§push(this.§-Y§);
                                                   if(_loc2_ || param1)
                                                   {
                                                      §§push(param1);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§ 2§.§-Y§);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(§§pop() - this.§-Y§);
                                                            if(_loc2_ || this)
                                                            {
                                                               addr292:
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc3_)
                                                               {
                                                                  addr290:
                                                                  §§push(§§pop() / this.§-f§);
                                                               }
                                                               §§pop().§-Y§ = §§pop() + §§pop();
                                                               loop11:
                                                               for(; _loc2_; §§pop().§]!=§ = §§pop(),if(_loc3_ && this)
                                                               {
                                                                  continue;
                                                               },§§goto(addr167))
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§%!;§);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§push(param1);
                                                                     if(_loc2_)
                                                                     {
                                                                        §§push(this.§ 2§.§%!;§);
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           §§push(§§pop() - this.§%!;§);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr254:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 addr252:
                                                                                 §§push(§§pop() / this.§-f§);
                                                                              }
                                                                              §§pop().§%!;§ = §§pop() + §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this);
                                                                                 §§push(this.§%!;§);
                                                                                 if(!(_loc3_ && param1))
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       §§push(§§pop() / 50);
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          §§push(this.§-f§);
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §§push(§§pop() / §8!C§);
                                                                                          }
                                                                                          §§push(§§pop() * §§pop());
                                                                                       }
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                 }
                                                                                 §§pop().§%!;§ = §§pop();
                                                                                 §§push(this);
                                                                                 §§push(this.§]!=§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§push(param1);
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(360 - this.§]!=§);
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr158:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          §§push(this.§-f§);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                                 §§goto(addr158);
                                                                                 addr95:
                                                                                 while(!(_loc3_ && param1))
                                                                                 {
                                                                                    this.§-Y§ = this.§ 2§.§-Y§;
                                                                                    continue loop13;
                                                                                    addr40:
                                                                                    if(_loc2_ || this)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§]z§();
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop13;
                                                                                          }
                                                                                          addr52:
                                                                                          while(!(_loc3_ && _loc2_))
                                                                                          {
                                                                                             §§goto(addr40);
                                                                                          }
                                                                                          while(_loc2_ || param1)
                                                                                          {
                                                                                             this.§]!=§ = 0;
                                                                                             §§goto(addr33);
                                                                                          }
                                                                                          addr33:
                                                                                          continue loop10;
                                                                                       }
                                                                                       return;
                                                                                       addr21:
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop6;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                                  §§goto(addr254);
                                                               }
                                                               §§goto(addr309);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr290);
                                                   }
                                                   §§goto(addr292);
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§goto(addr303);
                           }
                        }
                     }
                     continue loop0;
                  }
                  return;
                  addr371:
               }
            }
            §§goto(addr382);
         }
      }
      
      public function §@A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§5a§ = true;
            this.§-f§ = §8!C§;
            this.§`+§(§7E§.§;!<§);
         }
         while(this.§`<§ != 0)
         {
            if(!_loc1_)
            {
               §§push(this);
               §§push(this.§%!;§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() + this.§`<§);
               }
               §§pop().§%!;§ = §§pop();
            }
            do
            {
               this.§`<§ = 0;
            }
            while(!_loc2_);
            
            if(_loc2_)
            {
               break;
            }
         }
      }
      
      public function §#2§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(_loc4_ || this)
         {
            §§push(this.§,d§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§39§);
                              loop4:
                              while(true)
                              {
                                 if(§§pop() > this.§ 2§.§1! §.§1!6§.§&p§)
                                 {
                                    addr320:
                                    §§push(this);
                                    §§push(this.§ 2§.§1! §.§1!6§.§&p§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() - this.§39§);
                                    }
                                    §§pop().§7z§(§§pop());
                                    while(true)
                                    {
                                       this.§!!&§ = -1;
                                    }
                                    addr320:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§!!&§);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().§!!&§ = §§pop();
                                    §§push(this.§!!&§);
                                    if(!_loc3_)
                                    {
                                       if(!(_loc4_ || this))
                                       {
                                          continue loop4;
                                       }
                                       §§push(0);
                                       if(_loc4_ || param1)
                                       {
                                          §§goto(addr27);
                                       }
                                       if(_loc3_ && param1)
                                       {
                                          break;
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          §§push(0);
                                          loop6:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             if(!isNaN(this.§39§))
                                             {
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(this.§ 2§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(§§pop().§1! §);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().objects);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().§9!0§(this.§-Y§,this.§39§));
                                                            if(_loc4_ || param1)
                                                            {
                                                               §§push(int(§§pop()));
                                                            }
                                                            loop11:
                                                            while(_loc4_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(§§pop() >= 0)
                                                                  {
                                                                     §§push(this.§ 2§);
                                                                     loop13:
                                                                     while(_loc4_)
                                                                     {
                                                                        §§push(§§pop().§1! §);
                                                                        loop14:
                                                                        while(_loc4_)
                                                                        {
                                                                           §§push(§§pop().objects);
                                                                           while(_loc4_ || param1)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().§!§(§§pop()));
                                                                                 addr120:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().§@!!§);
                                                                                    addr121:
                                                                                    addr189:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             continue loop7;
                                                                                          }
                                                                                          §§push(this.§ 2§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop().§1! §);
                                                                                             if(!(_loc4_ || _loc3_))
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             §§goto(addr60);
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop13;
                                                                                       }
                                                                                       addr326:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§!!&§);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                break loop5;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr189:
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       this.§!!&§ = -1;
                                                                                       addr100:
                                                                                       §§goto(addr27);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§push(§§pop().objects);
                                                                              if(_loc3_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(_loc2_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§push(§§pop().§!§(§§pop()));
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop().§2h§());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          break loop12;
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc3_ && _loc2_)
                                                                                          {
                                                                                             addr261:
                                                                                             this.§!!&§ = this.§7!E§;
                                                                                             return;
                                                                                             addr265:
                                                                                          }
                                                                                          this.§0I§ = false;
                                                                                          this.§!!&§ = 2000;
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§!!&§ = 500;
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr95:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr189);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr27);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr121);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr120);
                                                                                 }
                                                                                 §§goto(addr121);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr119);
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(param1);
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() / 100);
                                                                     }
                                                                     §§push(§§pop().§7z§(§§pop()));
                                                                     break;
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               if(_loc4_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr149);
                                          }
                                       }
                                       §§goto(addr261);
                                    }
                                    §§goto(addr252);
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        addr27:
                        if(§§pop() <= §§pop())
                        {
                           addr252:
                           §§push(this.§7!E§);
                           §§push(0);
                        }
                        return;
                     }
                  }
                  §§goto(addr326);
               }
            }
         }
         §§goto(addr320);
      }
      
      public function §7z§(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this);
         §§push(this.§%!;§);
         if(_loc2_)
         {
            §§push(§§pop() + param1);
         }
         §§pop().§%!;§ = §§pop();
         §§push(this);
         §§push(this.§39§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() + param1);
         }
         §§pop().§39§ = §§pop();
         loop0:
         do
         {
            §§push(this.§39§);
            if(_loc2_ || param1)
            {
               §§push(this.§ 2§);
               if(_loc2_)
               {
                  §§push(§§pop().§1! §);
                  if(!_loc3_)
                  {
                     §§push(§§pop().§1!6§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop().§&p§);
                        if(_loc2_)
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(this.§39§);
                              if(_loc2_ || _loc2_)
                              {
                                 addr139:
                                 addr138:
                                 addr137:
                                 addr136:
                                 §§push(§§pop() - this.§ 2§.§1! §.§1!6§.§&p§);
                                 if(!(_loc3_ && this))
                                 {
                                    addr157:
                                    §§push(Number(§§pop()));
                                 }
                                 param1 = §§pop();
                                 §§push(this);
                                 §§push(this.§%!;§);
                                 if(!_loc3_)
                                 {
                                    §§push(§§pop() - param1);
                                 }
                                 §§pop().§%!;§ = §§pop();
                                 addr159:
                              }
                              §§goto(addr157);
                           }
                           else
                           {
                              do
                              {
                                 this.§]z§();
                                 if(!(_loc2_ || this))
                                 {
                                    continue;
                                 }
                                 if(_loc3_ && _loc3_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc2_)
                                 {
                                    §§push(false);
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    addr46:
                                    return §§pop();
                                 }
                                 §§goto(addr159);
                              }
                              while(_loc2_ || param1);
                              
                           }
                           §§push(this);
                           §§push(this.§39§);
                           if(_loc2_ || _loc2_)
                           {
                              §§push(§§pop() - param1);
                           }
                           §§pop().§39§ = §§pop();
                           continue;
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr137);
               }
               §§goto(addr136);
            }
            §§goto(addr157);
         }
         while(this.§]z§(), _loc3_);
         
         §§goto(addr46);
         §§push(true);
      }
      
      public function §`!4§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§1D§ = null;
         var _loc3_:Texture = null;
         var _loc1_:§2D§ = §&!@§.§9B§(this.mName).shape;
         §§push(_loc1_.§0V§());
         loop0:
         while(true)
         {
            §§push(§2D§.§>!$§);
            addr145:
            addr80:
            loop1:
            while(true)
            {
               if(§§pop() != §§pop())
               {
                  continue loop0;
               }
               if(_loc4_ || _loc3_)
               {
                  this.§,E§ = _loc1_.§9H§()[0];
               }
               while(true)
               {
                  this.§ !#§ = _loc1_.§?!#§;
                  addr140:
                  while(true)
                  {
                     break loop1;
                  }
               }
            }
            loop2:
            while(true)
            {
               this.§,k§ = this.§ 2§.§1! §.§0!§.§9$§(this.mName);
               while(this.§,k§)
               {
                  this.§@u§(this.§,k§.getFrame(0));
                  if(_loc5_)
                  {
                     break;
                  }
                  if(!(_loc5_ && _loc2_))
                  {
                     if(!(_loc5_ && this))
                     {
                        §§goto(addr30);
                     }
                     continue loop2;
                  }
               }
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr159);
            }
            this.§@u§(null);
            addr30:
            return;
         }
      }
      
      public function §@u§(param1:§1D§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Texture = null;
         var _loc3_:* = Number(1);
         if(!(_loc5_ && _loc2_))
         {
            if(!param1)
            {
               addr31:
               _loc2_ = this.§ 2§.§01§.textureManager.§9!5§();
               if(!_loc5_)
               {
                  addr58:
                  §§push(this.§6-§);
                  if(_loc4_)
                  {
                     if(§§pop() == null)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           this.§6-§ = new §1!,§(_loc2_);
                           this.§1-§.addChild(this.§6-§);
                        }
                     }
                     else
                     {
                        this.§6-§.texture = _loc2_;
                     }
                     if(param1)
                     {
                        §§push(this.§6-§);
                        §§push(param1.pivotX);
                        loop0:
                        while(true)
                        {
                           §§push(-§§pop());
                           §§push(this.§,E§);
                           addr236:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr237:
                              while(true)
                              {
                                 §§push(§2^§.§,]§);
                                 addr239:
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    addr240:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       addr241:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        §§push(this.§6-§);
                        §§push(this.§6-§);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr122);
               }
               §§goto(addr106);
            }
            else
            {
               _loc2_ = param1.texture;
               if(_loc4_)
               {
                  §§push(param1.scale);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc3_ = §§pop();
               }
            }
            §§goto(addr58);
         }
         §§goto(addr31);
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = true;
         if(!_loc6_)
         {
            this.§#2§(param1);
         }
         while(this.§5a§)
         {
            if(_loc6_ && param2)
            {
               continue;
            }
            this.§7!E§ = 0;
            loop1:
            while(true)
            {
               §§push(false);
               while(true)
               {
                  _loc4_ = §§pop();
                  continue loop1;
                  loop6:
                  while(!(_loc6_ && param1))
                  {
                     §§pop();
                     loop7:
                     for(; !_loc6_; this.§<!@§(param1,param2),if(_loc6_ && param2)
                     {
                        continue;
                     },if(!(_loc5_ || param2))
                     {
                        continue loop1;
                     },§§goto(addr21))
                     {
                        §§push(param3);
                        if(!_loc6_)
                        {
                           §§push(true);
                           if(!_loc6_)
                           {
                              addr33:
                              §§push(§§pop() == §§pop());
                              if(!(_loc5_ || param2))
                              {
                                 continue loop6;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    continue loop6;
                                 }
                              }
                              addr75:
                           }
                           while(§§pop())
                           {
                              continue loop7;
                           }
                           §§goto(addr21);
                        }
                        §§goto(addr33);
                     }
                     while(true)
                     {
                        this.§;!?§(param1);
                        §§goto(addr75);
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               this.§;D§(param1);
               §§goto(addr110);
            }
            addr21:
            return;
         }
      }
      
      public function §;D§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§0M§);
         while(true)
         {
            §§push(0);
            while(true)
            {
               if(§§pop() <= §§pop())
               {
                  §§push(this.§=p§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     if(_loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() <= §§pop());
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue loop2;
                           }
                           addr72:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc3_ && this)
                                    {
                                       continue loop2;
                                    }
                                    §§pop();
                                    while(true)
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc3_ && param1)
                                          {
                                             this.§%!0§();
                                          }
                                          else
                                          {
                                             addr135:
                                          }
                                          continue loop8;
                                          break;
                                       }
                                       break;
                                       addr32:
                                       if(!(_loc3_ && this))
                                       {
                                          this.§@=§();
                                          §§goto(addr17);
                                       }
                                    }
                                    §§goto(addr17);
                                 }
                                 addr77:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr32);
                                 }
                                 addr17:
                                 return;
                              }
                           }
                        }
                        addr60:
                        while(_loc2_)
                        {
                           §§goto(addr72);
                        }
                     }
                  }
                  addr127:
                  if(!(_loc3_ && param1))
                  {
                     break;
                  }
                  continue;
               }
               §§push(this);
               §§push(this.§0M§);
               if(_loc2_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§0M§ = §§pop();
               §§push(this.§0M§);
               §§goto(addr127);
            }
            if(§§pop() <= §§pop())
            {
               §§goto(addr135);
            }
            §§goto(addr100);
         }
      }
      
      public function §%!0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0M§ = 0;
            do
            {
               this.§@u§(this.§,k§.getFrame(0));
            }
            while(_loc1_);
            
         }
      }
      
      public function §@=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.mName != "BIRD_SARDINE")
            {
               loop0:
               do
               {
                  this.§0M§ = §&H§;
                  while(_loc2_)
                  {
                     this.§@u§(this.§,k§.getSubAnimation("blink").getFrame(0));
                     if(_loc2_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(_loc1_);
               
               return;
            }
         }
      }
      
      public function §;!?§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§=p§);
         while(true)
         {
            §§push(0);
            while(true)
            {
               if(§§pop() <= §§pop())
               {
                  §§push(this.§0M§);
                  while(true)
                  {
                     §§push(0);
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push(§§pop() <= §§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           if(§§pop())
                           {
                              this.§`+§();
                              if(!_loc3_)
                              {
                                 §§goto(addr121);
                              }
                           }
                        }
                        else
                        {
                           addr57:
                        }
                        continue;
                        return;
                     }
                  }
                  addr93:
                  if(!(_loc2_ && param1))
                  {
                     break;
                  }
                  continue;
               }
               §§push(this);
               §§push(this.§=p§);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§=p§ = §§pop();
               addr121:
               §§push(this.§=p§);
               §§goto(addr93);
            }
            if(§§pop() <= §§pop())
            {
               this.§8!A§();
            }
            §§goto(addr57);
         }
      }
      
      public function §8!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§=p§ = 0;
         }
         do
         {
            this.§@u§(this.§,k§.getFrame(0));
         }
         while(_loc1_ && this);
         
      }
      
      public function §`+§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.mName == "BIRD_SARDINE")
            {
               return;
            }
            §§push(this.§=p§);
            loop0:
            while(true)
            {
               §§push(0);
               addr206:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     continue loop0;
                  }
                  this.§8!A§();
                  while(true)
                  {
                     continue loop0;
                     addr75:
                     if(_loc4_ || _loc3_)
                     {
                        §+>§.§0x§(param1,this.§><§);
                        addr20:
                        return;
                        addr87:
                     }
                  }
               }
            }
         }
         §§goto(addr199);
      }
      
      public function §<!@§(param1:Number, param2:Boolean) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         §§push(this.§7!E§);
         §§push(0);
         if(_loc7_)
         {
            if(§§pop() > §§pop())
            {
               if(!_loc6_)
               {
                  §§push(this);
                  §§push(this.§7!E§);
                  if(_loc7_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§7!E§ = §§pop();
                  §§push(this.§7!E§);
                  if(_loc7_)
                  {
                     §§push(0);
                     if(_loc7_ || param2)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              var _loc4_:*;
                              §§push((_loc4_ = this).§7h§);
                              if(_loc7_)
                              {
                                 §§push(§§pop() + 1);
                              }
                              var _loc5_:* = §§pop();
                              if(_loc7_)
                              {
                                 _loc4_.§7h§ = _loc5_;
                              }
                              §§push(this);
                              §§push(this.§3q§);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(§§pop() * 0.4);
                              }
                              §§pop().§3q§ = §§pop();
                              addr592:
                              §§push(!this.§,d§);
                              loop10:
                              while(true)
                              {
                                 addr594:
                                 if(§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§pop();
                                       addr596:
                                       while(true)
                                       {
                                          §§push(this.§7h§);
                                          if(_loc7_)
                                          {
                                             §§push(2);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() < §§pop());
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr588:
                                                      addr545:
                                                      addr544:
                                                      addr546:
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(this.§7h§);
                                                         break loop11;
                                                      }
                                                      if(this.§3q§ < -1)
                                                      {
                                                         this.§3q§ = -1;
                                                         addr550:
                                                      }
                                                      this.§1a§ = this.§3q§;
                                                      this.§7!E§ = §9@§;
                                                      §§push(this);
                                                      §§push(this.§7!E§);
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§push(§§pop() * (Math.abs(this.§1a§) / 2));
                                                      }
                                                      §§pop().§7!E§ = §§pop();
                                                      this.§&y§ = this.§7!E§;
                                                      this.§]!=§ = 0;
                                                      this.§%e§ = 0;
                                                      break loop10;
                                                      addr508:
                                                      addr528:
                                                      addr539:
                                                      addr497:
                                                   }
                                                   else
                                                   {
                                                      addr487:
                                                      addr488:
                                                   }
                                                   §§push(!this.§,d§);
                                                   if(!this.§,d§)
                                                   {
                                                      addr489:
                                                      if(!_loc7_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§pop();
                                                      §§push(Boolean(param2));
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      this.§7!E§ = 0;
                                                      this.§`<§ = 0;
                                                      this.§]!=§ = 0;
                                                      this.§3q§ = 0;
                                                      addr469:
                                                      break loop10;
                                                      addr469:
                                                      addr457:
                                                      addr462:
                                                   }
                                                   this.§1J§(2.25);
                                                   if(_loc7_)
                                                   {
                                                      break loop10;
                                                   }
                                                   §§goto(addr550);
                                                }
                                             }
                                             addr584:
                                             §§push(§§pop() > §§pop());
                                             if(§§pop() > §§pop())
                                             {
                                                §§pop();
                                                §§goto(addr588);
                                             }
                                             §§goto(addr545);
                                          }
                                          break loop11;
                                       }
                                    }
                                    §§goto(addr584);
                                    §§push(1);
                                 }
                                 §§goto(addr562);
                              }
                              addr218:
                              this.§]z§();
                              addr610:
                              addr417:
                           }
                           addr71:
                           return;
                           addr221:
                        }
                        else
                        {
                           §§push(this.§7!E§);
                           §§push(this.§&y§);
                           §§push(2);
                           if(_loc7_ || this)
                           {
                              §§push(§§pop() / §§pop());
                              loop18:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(this.§&y§);
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          §§push(2);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() / §§pop());
                                          }
                                          §§goto(addr544);
                                       }
                                       addr415:
                                       _loc3_ = §§pop();
                                       §§push(this);
                                       §§push(_loc3_);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(§§pop() * this.§1a§);
                                       }
                                       §§pop().§`<§ = §§pop();
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr222:
                                             §§push(this);
                                             §§push(360);
                                             §§push(§4m§);
                                             §§push(this.§&y§);
                                             if(_loc7_)
                                             {
                                                §§push(this.§7!E§);
                                                if(_loc7_)
                                                {
                                                   addr240:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc7_)
                                                   {
                                                      §§push(this.§&y§);
                                                   }
                                                   §§push(§§pop() * §§pop().§5v§(§§pop()));
                                                   if(_loc7_ || this)
                                                   {
                                                      §§push(§§pop() * this.§%e§);
                                                   }
                                                   §§pop().§]!=§ = §§pop();
                                                   §§goto(addr218);
                                                }
                                                §§push(§§pop() / §§pop());
                                             }
                                             §§goto(addr240);
                                          }
                                          else
                                          {
                                             §§goto(addr610);
                                          }
                                       }
                                       §§goto(addr588);
                                    }
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr352:
                                       §§push(this.§7!E§);
                                       loop0:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             §§push(this.§&y§);
                                             while(_loc7_)
                                             {
                                                §§push(2);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   while(!_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop18;
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               _loc3_ = §§pop();
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr596);
                                                               }
                                                               §§goto(addr478);
                                                            }
                                                            else
                                                            {
                                                               addr443:
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         addr445:
                                                         if(!_loc6_)
                                                         {
                                                            §§push(§4m§.§5v§(_loc3_));
                                                            break loop18;
                                                         }
                                                         §§goto(addr528);
                                                      }
                                                      _loc3_ = §§pop();
                                                      §§goto(addr445);
                                                   }
                                                   §§goto(addr440);
                                                   addr365:
                                                }
                                                §§push(§§pop() / §§pop());
                                                break loop0;
                                             }
                                             §§goto(addr440);
                                             addr359:
                                          }
                                          break;
                                          §§goto(addr352);
                                       }
                                       §§goto(addr443);
                                       §§push(§§pop() / §§pop());
                                       addr354:
                                    }
                                    break;
                                 }
                                 addr440:
                                 §§push(this.§&y§ - this.§7!E§);
                                 §§push(this.§&y§);
                                 §§push(2);
                              }
                              §§goto(addr415);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr441);
                        }
                     }
                     §§goto(addr588);
                  }
                  §§goto(addr415);
               }
               §§goto(addr539);
            }
            else
            {
               §§push(Math.random() * §^!5§);
               if(_loc7_)
               {
                  §§push(param1);
                  if(_loc7_)
                  {
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           §§push(§§pop() < §§pop());
                           if(_loc7_)
                           {
                              §§push(§§pop());
                              loop1:
                              for(; !_loc6_; loop5:
                              while(true)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§pop();
                                             loop6:
                                             for(; _loc7_ || this; this.§1J§(),if(_loc6_ && param1)
                                             {
                                                continue;
                                             },§§goto(addr119))
                                             {
                                                if(_loc7_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(this.§5a§);
                                                      if(_loc7_)
                                                      {
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc7_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           §§push(this.§0I§);
                                                                           if(!(_loc7_ || param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr212);
                                                                           }
                                                                           §§goto(addr152);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr440);
                                                                        }
                                                                     }
                                                                     §§goto(addr588);
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               if(_loc7_ || _loc3_)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr497);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr457);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr71);
                                                         addr133:
                                                      }
                                                      §§goto(addr489);
                                                   }
                                                   §§goto(addr475);
                                                }
                                                §§goto(addr462);
                                             }
                                             §§goto(addr221);
                                          }
                                          §§goto(addr487);
                                       }
                                       §§goto(addr133);
                                    }
                                    break;
                                 }
                                 continue loop1;
                              },§§goto(addr488))
                              {
                                 if(_loc7_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       while(!_loc6_)
                                       {
                                          §§pop();
                                          if(_loc7_)
                                          {
                                             §§push(!this.§,d§);
                                             while(true)
                                             {
                                                addr152:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   continue loop1;
                                                }
                                             }
                                             addr119:
                                             if(_loc6_ && _loc3_)
                                             {
                                                §§goto(addr469);
                                             }
                                             §§goto(addr71);
                                             addr151:
                                          }
                                          else
                                          {
                                             §§goto(addr415);
                                          }
                                          §§goto(addr469);
                                       }
                                       §§goto(addr546);
                                       addr212:
                                    }
                                    §§goto(addr151);
                                 }
                                 §§goto(addr594);
                              }
                              §§goto(addr584);
                           }
                           §§goto(addr592);
                        }
                        else
                        {
                           §§goto(addr354);
                        }
                     }
                     §§goto(addr359);
                  }
                  §§goto(addr365);
               }
            }
            §§goto(addr440);
         }
         §§goto(addr588);
      }
      
      public function §1J§(param1:Number = 1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.mName);
            while(true)
            {
               §§push("BIRD_SARDINE");
               while(§§pop() != §§pop())
               {
                  this.§7h§ = 0;
                  while(true)
                  {
                     this.§7!E§ = §9@§;
                     loop3:
                     while(true)
                     {
                        this.§`<§ = 0;
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(0.75);
                           if(_loc3_)
                           {
                              §§push(Math.random() * 1.5);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc2_ && param1))
                                 {
                                    §§push(-§§pop());
                                    if(_loc3_)
                                    {
                                       addr306:
                                       §§push(§§pop() * param1);
                                    }
                                 }
                                 §§pop().§1a§ = §§pop();
                                 this.§3q§ = this.§1a§;
                                 §§push(this);
                                 §§push(this.§7!E§);
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() * (Math.abs(this.§1a§) / 3));
                                 }
                                 §§pop().§7!E§ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    this.§&y§ = this.§7!E§;
                                    loop6:
                                    while(true)
                                    {
                                       §§push(this.mName);
                                       addr228:
                                       while(true)
                                       {
                                          §§push("BIRD_WHITE");
                                          addr229:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             addr230:
                                             loop9:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc2_)
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               if(_loc2_ && _loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               addr145:
                                                               continue loop5;
                                                               if(_loc2_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc3_ || _loc2_))
                                                               {
                                                                  continue loop9;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  if(this.§7!E§ < 350)
                                                                  {
                                                                     if(_loc2_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr120:
                                                                     continue loop4;
                                                                  }
                                                                  §§push(this);
                                                                  if(_loc3_)
                                                                  {
                                                                     if(Math.random() > 0.5)
                                                                     {
                                                                        addr73:
                                                                        §§push(1);
                                                                        if(!(_loc2_ && this))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc3_)
                                                                           {
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr86:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§pop().§%e§ = §§pop();
                                                                        do
                                                                        {
                                                                           §§push(this);
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              if(Math.random() <= 0.5)
                                                                              {
                                                                                 §§push(Number(0));
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           §§push(this.§%e§);
                                                                           if(!(_loc2_ && _loc3_))
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc2_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(§§pop().§%e§ = §§pop(), !_loc3_);
                                                                        
                                                                        break;
                                                                     }
                                                                     §§push(-1);
                                                                     §§goto(addr86);
                                                                  }
                                                                  §§goto(addr73);
                                                               }
                                                               return;
                                                               addr170:
                                                            }
                                                            continue loop6;
                                                            addr209:
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      continue;
                                                      addr204:
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr306);
                        }
                     }
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     this.§%e§ = 0;
                     §§goto(addr120);
                  }
               }
               return;
            }
         }
         §§goto(addr224);
      }
      
      public function §]z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1-§);
            loop0:
            while(true)
            {
               §§push(this.§-Y§);
               loop1:
               while(true)
               {
                  §§push(§2^§.§,]§);
                  loop2:
                  while(true)
                  {
                     §§pop().x = §§pop() / §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§1-§);
                        loop4:
                        for(; !_loc1_; §§push(this.§1-§),if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        },§§push(this.§]!=§),if(_loc2_)
                        {
                           §§push(§§pop() / 180);
                           if(_loc2_ || _loc2_)
                           {
                              §§goto(addr47);
                           }
                        },§§goto(addr62))
                        {
                           §§push(this.§%!;§);
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §§push(this.§`<§);
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              §§push(§§pop() + §§pop());
                              while(true)
                              {
                                 §§push(§2^§.§,]§);
                                 addr47:
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 §§pop().rotation = §§pop() * Math.PI;
                                 if(!_loc1_)
                                 {
                                    return;
                                    addr65:
                                 }
                                 while(_loc2_ || this)
                                 {
                                    continue loop4;
                                 }
                                 continue loop3;
                                 addr106:
                              }
                              addr102:
                           }
                           while(true)
                           {
                              §§pop().y = §§pop() / §§pop();
                              §§goto(addr106);
                              §§goto(addr102);
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §[u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§0I§ = true;
         }
         this.§,d§ = false;
         loop0:
         while(true)
         {
            this.§5a§ = false;
            this.§7h§ = 0;
            while(true)
            {
               this.§!!&§ = 0;
               loop2:
               while(true)
               {
                  this.§7!E§ = 0;
                  do
                  {
                     this.§7!E§ = 0;
                  }
                  while(!(_loc2_ || this));
                  
                  if(!(_loc2_ || _loc1_))
                  {
                     break;
                  }
                  this.§`<§ = 0;
                  this.§]!=§ = 0;
                  while(_loc2_)
                  {
                     this.§3q§ = 0;
                     while(!_loc1_)
                     {
                        this.§%e§ = 0;
                        if(_loc2_)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Number = Math.sqrt((param1 - this.§-Y§) * (param1 - this.§-Y§) + (param2 - this.§%!;§) * (param2 - this.§%!;§));
         if(_loc5_)
         {
            §§push(_loc3_);
            §§push(this.§ !#§);
            if(_loc5_ || param1)
            {
               §§push(§§pop() * 1.1);
            }
            if(§§pop() <= §§pop())
            {
               if(_loc5_)
               {
                  §§push(true);
                  if(!(_loc4_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr86:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr86);
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§-Y§);
            loop0:
            while(true)
            {
               §§push(param3);
               loop1:
               while(true)
               {
                  §§push(§§pop() >= §§pop());
                  §§push(§§pop() >= §§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§-Y§);
                           addr88:
                           while(true)
                           {
                              §§push(param4);
                              addr89:
                              while(true)
                              {
                                 §§push(§§pop() <= §§pop());
                              }
                           }
                           loop10:
                           while(true)
                           {
                              if(_loc6_ && this)
                              {
                                 continue loop3;
                              }
                              while(true)
                              {
                                 §§push(this.§%!;§);
                                 loop13:
                                 while(true)
                                 {
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(param1);
                                    loop14:
                                    while(true)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() >= §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(this.§%!;§);
                                                            if(!(_loc5_ || this))
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               break loop10;
                                                            }
                                                            §§push(param2);
                                                            if(!_loc5_)
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§push(§§pop() <= §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               §§goto(addr37);
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop10;
                                                            }
                                                            addr93:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            addr92:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr93);
                                                            }
                                                            §§goto(addr69);
                                                         }
                                                         addr69:
                                                         addr91:
                                                      }
                                                      addr37:
                                                   }
                                                   continue loop2;
                                                   return §§pop();
                                                }
                                                §§goto(addr92);
                                             }
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr89);
                                    }
                                 }
                              }
                           }
                           §§goto(addr88);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr91);
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         §§push(this.§-Y§);
         loop0:
         while(true)
         {
            §§push(param1);
            addr118:
            while(true)
            {
               §§push(§§pop() != §§pop());
               if(!(_loc5_ || param2))
               {
                  continue loop0;
               }
               if(!§§pop())
               {
                  continue loop0;
               }
               addr110:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(true);
                        addr113:
                        while(true)
                        {
                           _loc3_ = §§pop();
                        }
                     }
                     addr112:
                  }
                  while(true)
                  {
                     this.§-Y§ = param1;
                     this.§%!;§ = param2;
                     if(_loc5_)
                     {
                        this.§!!&§ = 100;
                        loop6:
                        while(true)
                        {
                           this.§]z§();
                           do
                           {
                              if(!(_loc4_ && param1))
                              {
                                 §§push(_loc3_);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop0;
                              }
                              continue loop6;
                           }
                           while(this.§ 2§.§8T§(), _loc4_ && this);
                           
                           return;
                        }
                     }
                     else
                     {
                        §§goto(addr112);
                     }
                  }
                  addr109:
               }
            }
         }
      }
      
      public function §,D§() : §1!,§
      {
         return this.§6-§;
      }
      
      public function get §2e§() : Number
      {
         return this.§7!E§;
      }
      
      public function get §,h§() : Number
      {
         return this.§!!&§;
      }
      
      public function set §,h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!&§ = param1;
         }
      }
      
      public function get §9[§() : Number
      {
         return this.§"G§;
      }
      
      public function get §6E§() : Boolean
      {
         return this.§,d§;
      }
      
      public function get radius() : Number
      {
         return this.§ !#§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §9[§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§"G§ = param1;
         }
      }
      
      public function get §2@§() : Number
      {
         return this.§^z§;
      }
      
      public function set §2@§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^z§ = param1;
         }
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function set scale(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§,&§ = param1;
         }
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function get §`v§() : Number
      {
         return this.§+<§;
      }
      
      public function get §#A§() : Number
      {
         return this.§,8§;
      }
   }
}
