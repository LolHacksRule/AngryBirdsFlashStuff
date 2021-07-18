package §0j§
{
   import §"! §.§4p§;
   import flash.utils.Dictionary;
   
   public class §[f§
   {
      
      public static const §?!O§:String = "linear";
      
      public static const §7&§:String = "easeIn";
      
      public static const §3X§:String = "easeOut";
      
      public static const §7G§:String = "easeInOut";
      
      public static const §[q§:String = "easeOutIn";
      
      public static const §4!;§:String = "easeInBack";
      
      public static const §'q§:String = "easeOutBack";
      
      public static const §=B§:String = "easeInOutBack";
      
      public static const §%T§:String = "easeOutInBack";
      
      public static const § O§:String = "easeInElastic";
      
      public static const §?;§:String = "easeOutElastic";
      
      public static const §0!D§:String = "easeInOutElastic";
      
      public static const §;r§:String = "easeOutInElastic";
      
      public static const §5?§:String = "easeInBounce";
      
      public static const §0!8§:String = "easeOutBounce";
      
      public static const §1G§:String = "easeInOutBounce";
      
      public static const §<G§:String = "easeOutInBounce";
      
      private static var §5!R§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §?!O§ = "linear";
            loop0:
            while(true)
            {
               §7&§ = "easeIn";
               loop1:
               while(true)
               {
                  §3X§ = "easeOut";
                  loop2:
                  while(true)
                  {
                     §7G§ = "easeInOut";
                     loop3:
                     while(true)
                     {
                        §[q§ = "easeOutIn";
                        while(true)
                        {
                           §4!;§ = "easeInBack";
                           loop5:
                           for(; !_loc2_; if(_loc2_ && _loc2_)
                           {
                              continue;
                           },§;r§ = "easeOutInElastic",while(true)
                           {
                              §5?§ = "easeInBounce";
                              do
                              {
                                 §0!8§ = "easeOutBounce";
                                 loop14:
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       continue loop3;
                                    }
                                    addr136:
                                    while(!_loc2_)
                                    {
                                       §0!D§ = "easeInOutElastic";
                                       §§goto(addr117);
                                       continue loop14;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              while(!(_loc1_ || _loc2_));
                              
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr55);
                           })
                           {
                              if(!_loc1_)
                              {
                                 continue loop1;
                              }
                              §'q§ = "easeOutBack";
                              while(true)
                              {
                                 §=B§ = "easeInOutBack";
                                 while(true)
                                 {
                                    §%T§ = "easeOutInBack";
                                    loop8:
                                    while(true)
                                    {
                                       § O§ = "easeInElastic";
                                       continue loop2;
                                       addr117:
                                       while(true)
                                       {
                                          if(_loc1_ || _loc1_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop8;
                                       }
                                       continue loop5;
                                    }
                                    addr55:
                                    if(!(_loc2_ && §[f§))
                                    {
                                       return;
                                       addr62:
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc1_ || §[f§))
                        {
                           continue;
                        }
                        §1G§ = "easeInOutBounce";
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr165);
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §[f§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         throw new §4p§();
      }
      
      public static function §,0§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(§5!R§ == null)
            {
               if(!_loc2_)
               {
                  addr49:
                  §#[§();
               }
            }
            return §5!R§[param1];
         }
         §§goto(addr49);
      }
      
      public static function §-F§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §[f§)
         {
            if(§5!R§ == null)
            {
               if(!_loc4_)
               {
                  addr61:
                  §#[§();
               }
               while(true)
               {
               }
               addr63:
            }
            while(true)
            {
               §5!R§[param1] = param2;
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr63);
            }
            return;
         }
         §§goto(addr61);
      }
      
      private static function §#[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5!R§ = new Dictionary();
            while(true)
            {
               §-F§(§?!O§,linear);
               while(true)
               {
                  §-F§(§7&§,easeIn);
                  loop7:
                  while(_loc1_ || _loc2_)
                  {
                     §-F§(§=B§,easeInOutBack);
                     while(!(_loc2_ && _loc2_))
                     {
                        §-F§(§%T§,easeOutInBack);
                        loop9:
                        while(true)
                        {
                           §-F§(§ O§,easeInElastic);
                           loop10:
                           while(true)
                           {
                              §-F§(§?;§,easeOutElastic);
                              addr89:
                              addr154:
                              while(true)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop9;
                                 }
                                 continue loop10;
                              }
                              while(true)
                              {
                                 §-F§(§'q§,easeOutBack);
                                 continue loop7;
                              }
                           }
                        }
                     }
                     while(!(_loc2_ && §[f§))
                     {
                        §-F§(§4!;§,easeInBack);
                        §§goto(addr154);
                        §§goto(addr128);
                     }
                     addr128:
                     §§goto(addr181);
                  }
               }
            }
         }
         §§goto(addr187);
      }
      
      private static function linear(param1:Number) : Number
      {
         return param1;
      }
      
      private static function easeIn(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && §[f§))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc2_)
               {
                  addr56:
                  return §§pop() * param1;
               }
            }
         }
         §§goto(addr56);
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() - 1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc3_ || _loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  addr69:
                  §§push(§§pop() * _loc2_);
                  if(_loc4_)
                  {
                  }
                  §§goto(addr74);
               }
               addr74:
               return §§pop();
               §§push(§§pop() + 1);
            }
         }
         §§goto(addr69);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §#K§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §#K§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(_loc3_ || §[f§)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         return Math.pow(param1,2) * ((_loc2_ + 1) * param1 - _loc2_);
      }
      
      private static function easeOutBack(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() - 1);
            if(_loc4_ || _loc2_)
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1.70158);
            if(!(_loc5_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
            if(!(_loc5_ && _loc2_))
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr27);
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §#K§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §#K§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!_loc5_)
         {
            §§push(param1);
            while(true)
            {
               §§push(0);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(1);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr180:
                                       §§push(param1);
                                       break loop4;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(0.3);
                                       addr153:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr154:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             addr155:
                                             while(true)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(_loc2_);
                                                   continue loop5;
                                                }
                                                if(_loc5_)
                                                {
                                                   break;
                                                }
                                                continue loop7;
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop3;
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr178);
                  }
               }
            }
         }
         §§goto(addr130);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr176:
                           while(true)
                           {
                              §§push(param1);
                              addr135:
                              while(true)
                              {
                                 §§push(1);
                                 addr136:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(!_loc5_);
                                 
                                 continue loop2;
                              }
                           }
                        }
                     }
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ || _loc2_)
                           {
                              §§push(param1);
                              break;
                           }
                           addr152:
                           while(_loc4_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(0.3);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop11:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr132:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             continue loop10;
                                          }
                                          addr95:
                                          addr95:
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             if(_loc5_ && _loc2_)
                                             {
                                                break loop7;
                                             }
                                             continue loop0;
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr176);
                        }
                        §§goto(addr128);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §#K§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §#K§(easeOutElastic,easeInElastic,param1);
      }
      
      private static function easeInBounce(param1:Number) : Number
      {
         return 1 - easeOutBounce(1 - param1);
      }
      
      private static function easeOutBounce(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         §§push(7.5625);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(!(_loc5_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!_loc5_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(1);
               loop1:
               while(true)
               {
                  §§push(_loc3_);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() / §§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() * Math.pow(param1,2));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop7:
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       loop8:
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc5_ && §[f§))
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   break;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop() * Math.pow(param1,2));
                                                   loop11:
                                                   while(_loc6_ || _loc3_)
                                                   {
                                                      §§push(0.9375);
                                                      loop12:
                                                      while(_loc6_ || _loc2_)
                                                      {
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(_loc6_ || §[f§)
                                                            {
                                                               addr252:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!(_loc6_ || §[f§))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     addr264:
                                                                     §§push(Number(§§pop()));
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr272:
                                                                        if(_loc6_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop9;
                                                                           }
                                                                           loop38:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr344:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * Math.pow(param1,2));
                                                                                 addr349:
                                                                                 loop26:
                                                                                 while(!_loc5_)
                                                                                 {
                                                                                    §§push(0.75);
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr356:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ && _loc2_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             _loc4_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       addr387:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          addr388:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             break loop26;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr390:
                                                                                    while(true)
                                                                                    {
                                                                                       param1 = §§pop();
                                                                                       continue loop38;
                                                                                    }
                                                                                 }
                                                                                 continue loop38;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr364);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr308:
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              addr318:
                                                                              §§push(2.25);
                                                                              §§push(_loc3_);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 break;
                                                                              }
                                                                              §§goto(addr387);
                                                                           }
                                                                           §§goto(addr349);
                                                                        }
                                                                     }
                                                                     §§goto(addr356);
                                                                  }
                                                                  §§goto(addr390);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            else
                                                            {
                                                               loop13:
                                                               while(_loc6_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ || param1))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§goto(addr308);
                                                                           §§push(param1);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(param1);
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop11;
                                                                              addr140:
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_ && param1)
                                                                                 {
                                                                                    continue loop15;
                                                                                 }
                                                                                 if(_loc5_ && §[f§)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc3_);
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr385);
                                                                                                }
                                                                                                addr384:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!(_loc5_ && §[f§))
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                §§goto(addr328);
                                                                                             }
                                                                                          }
                                                                                          break loop13;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    continue loop1;
                                                                                    addr369:
                                                                                 }
                                                                                 _loc4_ = §§pop();
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(_loc2_);
                                                                                       if(_loc5_ && _loc2_)
                                                                                       {
                                                                                          continue loop20;
                                                                                       }
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_ || §[f§)
                                                                                             {
                                                                                                §§push(§§pop() * Math.pow(param1,2));
                                                                                                if(!(_loc6_ || _loc3_))
                                                                                                {
                                                                                                   continue loop20;
                                                                                                }
                                                                                                if(_loc6_ || §[f§)
                                                                                                {
                                                                                                   addr105:
                                                                                                   §§push(0.984375);
                                                                                                   if(!(_loc5_ && §[f§))
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc5_ && _loc2_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            §§goto(addr252);
                                                                                                         }
                                                                                                         §§goto(addr264);
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr207:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         addr208:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr209:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1 = §§pop();
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr105);
                                                                                                      }
                                                                                                      addr207:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      break loop11;
                                                                                                   }
                                                                                                   §§goto(addr344);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr386);
                                                                                                }
                                                                                                addr385:
                                                                                             }
                                                                                             §§goto(addr387);
                                                                                          }
                                                                                          §§goto(addr208);
                                                                                       }
                                                                                       §§goto(addr209);
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           addr169:
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr364);
                                                                     addr295:
                                                                  }
                                                                  §§goto(addr318);
                                                               }
                                                               §§goto(addr388);
                                                            }
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      §§goto(addr328);
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop10;
                                                      }
                                                      param1 = §§pop();
                                                      continue loop4;
                                                   }
                                                   addr341:
                                                   while(true)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr140);
                                             §§goto(addr169);
                                          }
                                          return §§pop();
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(param1);
                        }
                        §§goto(addr369);
                     }
                  }
               }
            }
         }
         §§goto(addr341);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §#K§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §#K§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §#K§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §[f§))
         {
            §§push(param3);
            if(!(_loc4_ && param3))
            {
               §§push(0.5);
               if(!_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        §§push(0.5);
                        if(_loc5_)
                        {
                           §§push(param1);
                           if(_loc5_ || param2)
                           {
                              §§push(global);
                              if(!_loc4_)
                              {
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    §§push(2);
                                    if(_loc5_ || param3)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && param3))
                                       {
                                          addr86:
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!_loc4_)
                                          {
                                             §§goto(addr90);
                                          }
                                          else
                                          {
                                             addr141:
                                             return §§pop() + 0.5;
                                             addr139:
                                          }
                                       }
                                       else
                                       {
                                          addr109:
                                          §§push(§§pop() - 0.5);
                                          if(!(_loc4_ && param3))
                                          {
                                             addr119:
                                             §§push(§§pop() * 2);
                                          }
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_ || param2)
                                          {
                                             §§goto(addr139);
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr141);
                                    }
                                    §§goto(addr119);
                                 }
                                 §§goto(addr86);
                              }
                              else
                              {
                                 addr101:
                                 §§push(param3);
                                 if(_loc5_ || §[f§)
                                 {
                                    §§goto(addr109);
                                 }
                              }
                              §§goto(addr119);
                           }
                           else
                           {
                              addr100:
                              §§push(global);
                           }
                           §§goto(addr101);
                        }
                        addr90:
                        return §§pop();
                     }
                     addr91:
                     §§push(0.5);
                     if(_loc5_ || param1)
                     {
                        §§goto(addr100);
                        §§push(param2);
                     }
                     §§goto(addr141);
                     §§goto(addr141);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr141);
         }
         §§goto(addr91);
      }
   }
}
