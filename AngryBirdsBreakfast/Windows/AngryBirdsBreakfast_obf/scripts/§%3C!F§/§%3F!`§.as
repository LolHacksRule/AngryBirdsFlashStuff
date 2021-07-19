package §<!F§
{
   import §?@§.§'^§;
   import com.angrybirds.§&!"§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §?!`§ extends Sprite
   {
      
      public static const §8L§:int = 0;
      
      public static const §^"§:int = 1;
      
      public static const §1m§:int = 2;
      
      public static const §&X§:int = 3;
      
      private static const §?"§:String = "all";
      
      public static const §9!9§:uint = 40;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8L§ = 0;
         }
         loop0:
         while(true)
         {
            §^"§ = 1;
            loop1:
            while(true)
            {
               §1m§ = 2;
               loop2:
               while(true)
               {
                  §&X§ = 3;
                  while(!_loc1_)
                  {
                     §?"§ = "all";
                     while(_loc2_ || §?!`§)
                     {
                        if(!_loc1_)
                        {
                           §9!9§ = 40;
                           if(!(_loc1_ && _loc1_))
                           {
                              if(!_loc1_)
                              {
                                 return;
                              }
                              continue loop0;
                           }
                           continue;
                           continue;
                        }
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
            }
         }
      }
      
      private const §^!@§:Number = 0.3;
      
      private const §3!,§:Number = 25;
      
      private const §?!g§:Number = 10;
      
      private const §7" §:Number = 9;
      
      private var §5N§:int;
      
      private var §,!S§:int;
      
      private var §>!+§:Vector.<§+!D§>;
      
      private var §+!?§:Vector.<§+!D§>;
      
      private var §!!,§:Point;
      
      private var §5! §:int;
      
      public function §?!`§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§+!D§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(_loc14_)
         {
            super();
         }
         loop0:
         while(true)
         {
            addr39:
            addr54:
            while(true)
            {
               this.§5N§ = param1;
               continue loop0;
            }
            var _loc8_:Number = Math.min(§&!"§.§3H§,§&!"§.§,!C§);
            addr126:
            var _loc9_:Number = Math.max(§&!"§.§3H§,§&!"§.§,!C§);
            if(_loc14_)
            {
               §§push(param3);
               loop3:
               while(true)
               {
                  §§push(§&!"§.§,!C§);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     loop5:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop6:
                        while(true)
                        {
                           param3 = §§pop();
                           addr183:
                           while(true)
                           {
                              §§push(param4);
                              if(!_loc15_)
                              {
                                 if(_loc15_ && param2)
                                 {
                                    continue loop5;
                                 }
                                 §§push(§&!"§.§3H§);
                                 if(!_loc14_)
                                 {
                                    continue loop4;
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(_loc15_ && param1)
                                 {
                                    continue loop3;
                                 }
                              }
                              if(!_loc15_)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop3;
                              }
                              continue loop6;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr184);
            }
         }
      }
      
      public function §9O§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§+!D§ = null;
         while(this.§>!+§.length > 0)
         {
            _loc1_ = this.§>!+§.shift();
            if(_loc2_ || this)
            {
               if(_loc1_.parent == this)
               {
                  if(!_loc3_)
                  {
                     this.removeChild(_loc1_);
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
               }
               _loc1_.§9O§();
            }
         }
         if(!(_loc3_ && _loc1_))
         {
            while(this.§+!?§.length > 0)
            {
               _loc1_ = this.§+!?§.shift();
               if(!_loc3_)
               {
                  if(_loc1_.parent == this)
                  {
                     if(_loc2_ || this)
                     {
                        this.removeChild(_loc1_);
                        if(_loc3_)
                        {
                           continue;
                        }
                     }
                  }
               }
               _loc1_.§9O§();
            }
            if(!_loc3_)
            {
               this.§>!+§ = new Vector.<§+!D§>(0);
               if(_loc2_ || _loc1_)
               {
                  this.§+!?§ = new Vector.<§+!D§>(0);
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§+!D§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:§+!D§ = null;
         if(_loc16_)
         {
            §§push(param1);
            if(!(_loc15_ && param1))
            {
               §§push(§§pop() / 20);
               if(!_loc15_)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(this.§>!+§.length > 0)
         {
            _loc5_ = this.§>!+§.shift();
            if(_loc16_)
            {
               §§push(Math.random() * (this.§3!,§ - this.§?!g§));
               loop1:
               while(true)
               {
                  §§push(this.§?!g§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           while(true)
                           {
                              §§push(this.§5! §);
                              loop6:
                              while(true)
                              {
                                 §§push(§8L§);
                                 loop7:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(this.§5! §);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(§^"§);
                                       loop9:
                                       while(true)
                                       {
                                          if(!(_loc15_ && this))
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                break;
                                             }
                                             §§push(this.§5! §);
                                             loop10:
                                             for(; !_loc15_; §§push(this.§5! §),if(_loc16_ || _loc3_)
                                             {
                                                continue loop6;
                                             })
                                             {
                                                §§push(§1m§);
                                                while(true)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         break;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop9;
                                                }
                                                addr592:
                                                §§push(Math.PI / 2 * Math.random());
                                                if(_loc16_ || param1)
                                                {
                                                   addr603:
                                                   _loc7_ = Number(§§pop());
                                                   if(_loc16_)
                                                   {
                                                      addr575:
                                                      _loc8_ = Number(Math.sin(_loc7_ + Math.PI / 2));
                                                      addr561:
                                                      _loc9_ = Number(Math.cos(_loc7_ + Math.PI / 2));
                                                      addr576:
                                                      if(!_loc15_)
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            §§push(_loc8_);
                                                            if(_loc16_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                            }
                                                            §§pop().§!!v§ = §§pop();
                                                            loop14:
                                                            while(!(_loc15_ && param1))
                                                            {
                                                               if(_loc16_)
                                                               {
                                                                  §§push(_loc5_);
                                                                  §§push(_loc9_);
                                                                  if(_loc16_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                                  §§pop().§-4§ = §§pop();
                                                                  loop15:
                                                                  for(; !_loc15_; while(true)
                                                                  {
                                                                     if(_loc16_ || this)
                                                                     {
                                                                        if(_loc16_ || this)
                                                                        {
                                                                           §§push(0.5);
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(Math.random() * 1.5);
                                                                              if(_loc16_ || _loc2_)
                                                                              {
                                                                                 if(_loc16_ || param1)
                                                                                 {
                                                                                    if(!(_loc15_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr204);
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§goto(addr657);
                                                                                 }
                                                                                 §§goto(addr513);
                                                                              }
                                                                              §§goto(addr348);
                                                                           }
                                                                           §§goto(addr226);
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop15;
                                                                     §§goto(addr114);
                                                                  },§§goto(addr402))
                                                                  {
                                                                     _loc5_.x = this.§!!,§.x;
                                                                     loop16:
                                                                     while(_loc16_ || _loc2_)
                                                                     {
                                                                        _loc5_.y = this.§!!,§.y;
                                                                        loop17:
                                                                        while(!_loc15_)
                                                                        {
                                                                           this.§+!?§.push(_loc5_);
                                                                           continue loop15;
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(0.2);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr132:
                                                                                             if(_loc16_ || _loc3_)
                                                                                             {
                                                                                                addr140:
                                                                                                §§push(Number(§§pop()));
                                                                                                if(!(_loc15_ && _loc3_))
                                                                                                {
                                                                                                   if(!(_loc15_ && param1))
                                                                                                   {
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            loop22:
                                                                                                            for(; !(_loc15_ && _loc2_); while(true)
                                                                                                            {
                                                                                                               if(!(_loc15_ && param1))
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            },while(true)
                                                                                                            {
                                                                                                               if(_loc16_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr456:
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        break loop16;
                                                                                                                     }
                                                                                                                     §§goto(addr575);
                                                                                                                  }
                                                                                                                  addr454:
                                                                                                               }
                                                                                                               addr673:
                                                                                                               continue loop13;
                                                                                                            })
                                                                                                            {
                                                                                                               if(_loc16_)
                                                                                                               {
                                                                                                                  do
                                                                                                                  {
                                                                                                                     _loc5_.§0o§ = §'^§.§2Z§.§!!f§(_loc5_,{
                                                                                                                        "scaleX":_loc11_,
                                                                                                                        "scaleY":_loc11_
                                                                                                                     },{
                                                                                                                        "scaleX":_loc10_,
                                                                                                                        "scaleY":_loc10_
                                                                                                                     },5);
                                                                                                                     continue loop22;
                                                                                                                  }
                                                                                                                  while(false);
                                                                                                                  
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               addr623:
                                                                                                               addr623:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                            }
                                                                                                            loop37:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(this.§3!,§);
                                                                                                                  loop32:
                                                                                                                  for(; !(_loc15_ && _loc2_); if(_loc15_ && _loc2_)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr348:
                                                                                                                     _loc6_ = Number(§§pop() + _loc12_);
                                                                                                                     addr347:
                                                                                                                     break loop21;
                                                                                                                  },addr442:,while(_loc16_)
                                                                                                                  {
                                                                                                                     _loc9_ = §§pop();
                                                                                                                     break loop14;
                                                                                                                  },§§goto(addr454))
                                                                                                                  {
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           §§push(2);
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc15_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc15_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    loop33:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc16_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ || this))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                                                addr334:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr632:
                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                             addr615:
                                                                                                                                             §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                             if(!(_loc15_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                break loop13;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * Math.random());
                                                                                                                                                addr701:
                                                                                                                                                addr697:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr702:
                                                                                                                                                   addr687:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      break loop17;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr633:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(!(_loc15_ && this))
                                                                                                                                          {
                                                                                                                                             if(_loc16_ || this)
                                                                                                                                             {
                                                                                                                                                _loc12_ = §§pop();
                                                                                                                                                continue loop37;
                                                                                                                                             }
                                                                                                                                             §§goto(addr615);
                                                                                                                                          }
                                                                                                                                          while(_loc16_)
                                                                                                                                          {
                                                                                                                                             if(_loc16_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                while(!(_loc15_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop4;
                                                                                                                                                      }
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      §§goto(addr543);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr592);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr561);
                                                                                                                                                addr531:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr657:
                                                                                                                                          §§push(§§pop() * 0.5);
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             addr660:
                                                                                                                                             _loc7_ = Number(§§pop());
                                                                                                                                             §§goto(addr632);
                                                                                                                                             §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                             addr661:
                                                                                                                                          }
                                                                                                                                          §§goto(addr702);
                                                                                                                                          addr416:
                                                                                                                                          addr521:
                                                                                                                                       }
                                                                                                                                       _loc9_ = §§pop();
                                                                                                                                       §§goto(addr673);
                                                                                                                                    }
                                                                                                                                    §§goto(addr603);
                                                                                                                                 }
                                                                                                                                 §§goto(addr701);
                                                                                                                              }
                                                                                                                              addr368:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              break loop32;
                                                                                                                           }
                                                                                                                           addr414:
                                                                                                                        }
                                                                                                                        §§goto(addr697);
                                                                                                                     }
                                                                                                                     §§goto(addr592);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr416);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr576);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0.5);
                                                                                                               addr513:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc16_ || _loc2_))
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            addr512:
                                                                                                         }
                                                                                                         §§goto(addr521);
                                                                                                      }
                                                                                                      §§goto(addr368);
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr226:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            _loc10_ = §§pop();
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§goto(addr334);
                                                                                                      }
                                                                                                      break;
                                                                                                      §§goto(addr140);
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                   addr226:
                                                                                                }
                                                                                                §§goto(addr334);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc15_ && _loc2_))
                                                                                                   {
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         if(_loc16_ || this)
                                                                                                         {
                                                                                                            §§goto(addr226);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         §§goto(addr657);
                                                                                                      }
                                                                                                      §§goto(addr660);
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr132);
                                                                                                }
                                                                                                addr204:
                                                                                             }
                                                                                             §§goto(addr531);
                                                                                          }
                                                                                          §§goto(addr140);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr505:
                                                                                       }
                                                                                       §§goto(addr512);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop13;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                           addr684:
                                                                           while(true)
                                                                           {
                                                                              _loc8_ = §§pop();
                                                                              addr685:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    break loop7;
                                                                                 }
                                                                                 §§goto(addr687);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc16_ || _loc3_)
                                                                        {
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              §§goto(addr442);
                                                                              §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                           }
                                                                           §§goto(addr633);
                                                                        }
                                                                        break;
                                                                        §§goto(addr456);
                                                                     }
                                                                     §§goto(addr575);
                                                                  }
                                                                  continue;
                                                               }
                                                               §§goto(addr592);
                                                               §§goto(addr592);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(this.§?!g§);
                                                               if(_loc16_ || this)
                                                               {
                                                                  §§goto(addr414);
                                                                  §§push(2);
                                                               }
                                                               §§goto(addr657);
                                                            }
                                                         }
                                                         _loc9_ = §§pop();
                                                         §§goto(addr623);
                                                         addr309:
                                                      }
                                                      §§goto(addr685);
                                                   }
                                                   §§goto(addr661);
                                                }
                                                §§goto(addr684);
                                             }
                                             continue loop8;
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr657);
                                    }
                                 }
                                 §§goto(addr697);
                                 §§push(Math.PI / 2);
                                 if(!(_loc16_ || _loc2_))
                                 {
                                    continue;
                                 }
                                 §§push(§&X§);
                                 if(_loc15_)
                                 {
                                    §§goto(addr585);
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    §§goto(addr505);
                                 }
                                 §§goto(addr309);
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr623);
         }
         var _loc2_:int = this.§+!?§.length;
         §§push(_loc2_);
         if(!_loc15_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(_loc16_ || _loc2_)
         {
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc15_ && this)
               {
                  break;
               }
               _loc5_ = this.§+!?§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§-4§);
               if(_loc16_ || _loc2_)
               {
                  §§push(this.§^!@§);
                  if(_loc16_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§-4§ = §§pop();
               if(_loc16_ || _loc2_)
               {
                  if(_loc5_.§-4§ > this.§7" §)
                  {
                     if(_loc16_ || _loc3_)
                     {
                        _loc5_.§-4§ = this.§7" §;
                        if(_loc15_ && this)
                        {
                           continue;
                        }
                     }
                  }
                  _loc5_.x += _loc5_.§!!v§ * param1;
                  loop51:
                  while(true)
                  {
                     _loc5_.y += _loc5_.§-4§ * param1;
                     if(!(_loc16_ || _loc2_))
                     {
                        break;
                     }
                     if(!(_loc16_ || _loc3_))
                     {
                        continue;
                     }
                     _loc5_.rotation += 5 * param1;
                     if(!(_loc15_ && _loc2_))
                     {
                        loop52:
                        while(true)
                        {
                           if(_loc5_.y > this.§,!S§ + _loc5_.height / 2)
                           {
                              if(_loc16_)
                              {
                                 §§push(true);
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    if(_loc16_ || _loc3_)
                                    {
                                    }
                                    break;
                                 }
                                 addr925:
                                 if((_loc14_ = this.§+!?§.splice(_loc4_,1)[0]).parent == this)
                                 {
                                    if(_loc16_)
                                    {
                                       this.removeChild(_loc14_);
                                       if(_loc16_ || _loc2_)
                                       {
                                          addr966:
                                          _loc14_.§9O§();
                                          loop58:
                                          while(true)
                                          {
                                             addr961:
                                             while(true)
                                             {
                                                _loc5_.x = -2000;
                                                addr965:
                                                while(true)
                                                {
                                                   _loc5_.y = -2000;
                                                   if(!_loc16_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc16_)
                                                   {
                                                      continue loop58;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(false)
                                       {
                                          §§goto(addr961);
                                          §§goto(addr965);
                                       }
                                       addr969:
                                       §§push(_loc4_);
                                       if(_loc16_ || param1)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc4_ = §§pop();
                                       break loop51;
                                    }
                                    §§goto(addr965);
                                 }
                                 §§goto(addr966);
                                 addr827:
                              }
                              §§goto(addr925);
                           }
                           while(true)
                           {
                              §§push(this.§+!?§.length > 0);
                              if(!(_loc15_ && this))
                              {
                                 if(§§pop())
                                 {
                                    if(_loc16_ || param1)
                                    {
                                       if(_loc16_)
                                       {
                                          §§pop();
                                          if(_loc16_)
                                          {
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   §§push(_loc3_);
                                                   if(_loc15_ && param1)
                                                   {
                                                   }
                                                }
                                                continue loop52;
                                             }
                                             addr811:
                                          }
                                          §§goto(addr925);
                                       }
                                       else
                                       {
                                          §§goto(addr827);
                                       }
                                    }
                                    §§push(Boolean(§§pop()));
                                    break;
                                 }
                                 break;
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 break loop51;
                              }
                              §§goto(addr925);
                           }
                           §§goto(addr969);
                        }
                     }
                     §§goto(addr925);
                  }
                  continue;
               }
               §§goto(addr811);
            }
         }
      }
   }
}
