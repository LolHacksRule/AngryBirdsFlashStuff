package §"&§
{
   import §]!R§.§'3§;
   import flash.utils.Dictionary;
   
   public class §8!>§
   {
      
      public static const §@r§:String = "linear";
      
      public static const §6!U§:String = "easeIn";
      
      public static const §5U§:String = "easeOut";
      
      public static const §0U§:String = "easeInOut";
      
      public static const §="0§:String = "easeOutIn";
      
      public static const §!!1§:String = "easeInBack";
      
      public static const §2!8§:String = "easeOutBack";
      
      public static const §7!R§:String = "easeInOutBack";
      
      public static const §73§:String = "easeOutInBack";
      
      public static const §%!y§:String = "easeInElastic";
      
      public static const §'!p§:String = "easeOutElastic";
      
      public static const §4V§:String = "easeInOutElastic";
      
      public static const §+!q§:String = "easeOutInElastic";
      
      public static const §@l§:String = "easeInBounce";
      
      public static const §4$§:String = "easeOutBounce";
      
      public static const §0!<§:String = "easeInOutBounce";
      
      public static const §92§:String = "easeOutInBounce";
      
      private static var §3^§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §8!>§)
         {
            §@r§ = "linear";
            while(true)
            {
               §6!U§ = "easeIn";
               loop1:
               while(true)
               {
                  §5U§ = "easeOut";
                  loop2:
                  while(true)
                  {
                     §0U§ = "easeInOut";
                     loop3:
                     while(true)
                     {
                        §="0§ = "easeOutIn";
                        loop4:
                        while(true)
                        {
                           §!!1§ = "easeInBack";
                           loop5:
                           while(true)
                           {
                              §2!8§ = "easeOutBack";
                              addr174:
                              while(true)
                              {
                                 §7!R§ = "easeInOutBack";
                                 while(_loc1_)
                                 {
                                    §73§ = "easeOutInBack";
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       return;
                                       addr46:
                                    }
                                 }
                                 continue loop2;
                              }
                              addr91:
                              if(!(_loc1_ || _loc1_))
                              {
                                 continue;
                              }
                              if(_loc2_)
                              {
                                 continue loop1;
                              }
                              §4$§ = "easeOutBounce";
                              loop14:
                              while(_loc1_ || _loc1_)
                              {
                                 §0!<§ = "easeInOutBounce";
                                 while(true)
                                 {
                                    if(_loc1_ || _loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          addr60:
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          if(_loc1_ || §8!>§)
                                          {
                                             §§goto(addr91);
                                          }
                                          else
                                          {
                                             addr115:
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                §@l§ = "easeInBounce";
                                                continue loop13;
                                             }
                                             while(!_loc2_)
                                             {
                                                continue loop3;
                                                §§goto(addr115);
                                             }
                                             addr115:
                                             §§goto(addr174);
                                             addr134:
                                          }
                                       }
                                       continue loop5;
                                    }
                                    continue loop14;
                                 }
                                 while(_loc1_)
                                 {
                                    §+!q§ = "easeOutInElastic";
                                    §§goto(addr115);
                                    §§goto(addr60);
                                 }
                                 continue loop4;
                              }
                              while(true)
                              {
                                 §%!y§ = "easeInElastic";
                                 continue loop4;
                                 §§goto(addr72);
                              }
                              addr72:
                              §§goto(addr46);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      public function §8!>§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         throw new §'3§();
      }
      
      public static function §^!U§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§3^§ == null)
            {
               if(_loc2_)
               {
                  §;!G§();
               }
            }
         }
         return §3^§[param1];
      }
      
      public static function §9!U§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§3^§ == null)
            {
               while(true)
               {
                  §;!G§();
                  while(true)
                  {
                  }
               }
               addr57:
            }
            do
            {
               §3^§[param1] = param2;
               if(!_loc4_)
               {
                  continue;
               }
            }
            while(!_loc4_);
            
            return;
         }
         §§goto(addr57);
      }
      
      private static function §;!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §8!>§)
         {
            §3^§ = new Dictionary();
            while(true)
            {
               §9!U§(§@r§,linear);
               addr238:
               while(true)
               {
                  §9!U§(§6!U§,easeIn);
                  addr222:
                  addr46:
                  while(true)
                  {
                     §9!U§(§5U§,easeOut);
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                  }
               }
               addr99:
               if(_loc2_ && _loc2_)
               {
                  continue;
               }
               §9!U§(§4$§,easeOutBounce);
               loop15:
               while(true)
               {
                  §9!U§(§0!<§,easeInOutBounce);
                  loop16:
                  while(true)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        continue loop15;
                     }
                     addr66:
                     if(_loc1_ || §8!>§)
                     {
                        addr73:
                        if(!(_loc1_ || _loc2_))
                        {
                           break;
                        }
                        continue;
                     }
                     loop11:
                     while(true)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           if(!_loc2_)
                           {
                              §9!U§(§4V§,easeInOutElastic);
                              loop12:
                              while(true)
                              {
                                 §9!U§(§+!q§,easeOutInElastic);
                                 addr122:
                                 while(true)
                                 {
                                    if(_loc2_ && §8!>§)
                                    {
                                       continue loop12;
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       §9!U§(§@l§,easeInBounce);
                                       while(true)
                                       {
                                          if(_loc1_ || §8!>§)
                                          {
                                             §§goto(addr99);
                                          }
                                          else
                                          {
                                             while(!(_loc2_ && _loc1_))
                                             {
                                                §9!U§(§2!8§,easeOutBack);
                                                break loop16;
                                             }
                                             while(true)
                                             {
                                                §9!U§(§!!1§,easeInBack);
                                                §§goto(addr191);
                                             }
                                             addr191:
                                             addr204:
                                          }
                                       }
                                       §§goto(addr238);
                                    }
                                    while(true)
                                    {
                                       §9!U§(§73§,easeOutInBack);
                                       addr166:
                                       while(true)
                                       {
                                          §9!U§(§%!y§,easeInElastic);
                                          addr160:
                                          while(true)
                                          {
                                             §9!U§(§'!p§,easeOutElastic);
                                             continue loop11;
                                          }
                                          continue loop11;
                                       }
                                    }
                                 }
                                 §§goto(addr222);
                              }
                           }
                           break;
                        }
                        §§goto(addr166);
                     }
                     while(true)
                     {
                        §9!U§(§="0§,easeOutIn);
                        §§goto(addr204);
                     }
                  }
                  addr178:
                  addr216:
                  while(true)
                  {
                     if(_loc1_ || §8!>§)
                     {
                        §9!U§(§7!R§,easeInOutBack);
                        §§goto(addr172);
                     }
                     break;
                     §§goto(addr73);
                  }
                  while(true)
                  {
                     §9!U§(§0U§,easeInOut);
                     §§goto(addr210);
                     §§goto(addr178);
                  }
               }
            }
         }
         §§goto(addr216);
      }
      
      private static function linear(param1:Number) : Number
      {
         return param1;
      }
      
      private static function easeIn(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  addr47:
                  return §§pop() * param1;
               }
            }
         }
         §§goto(addr47);
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - 1);
            if(!(_loc3_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  addr60:
                  §§push(§§pop() * _loc2_);
                  if(_loc3_ && _loc2_)
                  {
                  }
                  §§goto(addr80);
               }
               addr80:
               return §§pop();
               §§push(§§pop() + 1);
            }
         }
         §§goto(addr60);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §0!4§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §0!4§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(_loc3_ || §8!>§)
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
         if(_loc4_)
         {
            §§push(§§pop() - 1);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(!_loc5_)
         {
            return §§pop() + 1;
         }
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §0!4§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §0!4§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && §8!>§))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc6_ && param1))
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr185:
                           loop16:
                           while(true)
                           {
                              §§push(param1);
                              addr142:
                              while(true)
                              {
                                 §§push(1);
                                 addr143:
                                 while(_loc5_)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc5_)
                                    {
                                       continue loop16;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        addr184:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§push(param1);
                              continue loop0;
                           }
                           while(true)
                           {
                           }
                           addr161:
                        }
                        while(true)
                        {
                           §§push(0.3);
                           loop5:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 continue loop0;
                              }
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr139:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    continue loop5;
                                 }
                                 loop14:
                                 while(_loc5_ || param1)
                                 {
                                    _loc4_ = §§pop();
                                    if(!_loc6_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(-1 * Math.pow(2,10 * _loc4_));
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      addr58:
                                                      §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                                      if(!_loc5_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            break;
                                                         }
                                                         loop10:
                                                         while(!_loc6_)
                                                         {
                                                            _loc3_ = §§pop();
                                                            while(_loc5_ || _loc2_)
                                                            {
                                                               §§push(param1);
                                                               while(!(_loc6_ && §8!>§))
                                                               {
                                                                  §§push(§§pop() - 1);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop10;
                                                                  §§goto(addr74);
                                                               }
                                                               addr74:
                                                            }
                                                            §§goto(addr139);
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop14;
                                                      }
                                                   }
                                                   §§goto(addr74);
                                                }
                                                §§goto(addr58);
                                             }
                                             return §§pop();
                                             addr107:
                                          }
                                          §§goto(addr185);
                                       }
                                       else
                                       {
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr125);
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr184);
               }
            }
         }
         §§goto(addr107);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         if(!_loc4_)
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
                           addr162:
                           while(true)
                           {
                              §§push(param1);
                              addr128:
                              while(true)
                              {
                                 §§push(1);
                                 addr129:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!(_loc5_ || §8!>§))
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(_loc5_);
                                 
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§push(param1);
                           }
                           else
                           {
                              loop8:
                              while(true)
                              {
                                 addr112:
                                 while(true)
                                 {
                                    §§push(0.3);
                                    addr114:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr115:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop8;
                                       }
                                    }
                                    continue loop8;
                                 }
                              }
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr112);
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §0!4§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §0!4§(easeOutElastic,easeInElastic,param1);
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
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_ || _loc2_)
         {
            §§push(param1);
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
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc5_)
                                             {
                                                if(_loc6_)
                                                {
                                                   return §§pop();
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() * Math.pow(param1,2));
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(_loc5_ && param1)
                                                            {
                                                               loop12:
                                                               while(!(_loc5_ && _loc2_))
                                                               {
                                                                  if(!(_loc5_ && _loc2_))
                                                                  {
                                                                     §§push(2.5);
                                                                     loop13:
                                                                     for(; !_loc5_; if(!(_loc6_ || §8!>§))
                                                                     {
                                                                        continue;
                                                                     },if(!(_loc5_ && §8!>§))
                                                                     {
                                                                        §§goto(addr208);
                                                                        §§push(§§pop() - §§pop());
                                                                     },§§goto(addr348))
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ && _loc3_)
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr376:
                                                                              addr159:
                                                                              §§push(param1);
                                                                              while(true)
                                                                              {
                                                                                 §§push(2.625);
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(!(_loc6_ || _loc3_))
                                                                                    {
                                                                                       while(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                       }
                                                                                       addr377:
                                                                                       §§push(§§pop() / §§pop());
                                                                                       break loop13;
                                                                                       addr325:
                                                                                    }
                                                                                    addr328:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc6_ || _loc3_))
                                                                                       {
                                                                                          break loop16;
                                                                                       }
                                                                                       if(!(_loc6_ || §8!>§))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(0.984375);
                                                                                       addr83:
                                                                                       continue loop13;
                                                                                       if(!(_loc5_ && §8!>§))
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       addr329:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ || param1))
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                          §§push(Number(§§pop()));
                                                                                          while(true)
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             addr338:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop4;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr258:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 addr262:
                                                                                 _loc4_ = §§pop();
                                                                                 addr263:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break loop11;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr377);
                                                                              §§push(_loc3_);
                                                                           }
                                                                           while(_loc6_ || §8!>§)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!(_loc5_ && §8!>§))
                                                                              {
                                                                                 §§push(2.25);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_ || §8!>§)
                                                                                    {
                                                                                       §§goto(addr325);
                                                                                       §§push(_loc3_);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§goto(addr367);
                                                                                       }
                                                                                       addr366:
                                                                                    }
                                                                                    §§goto(addr377);
                                                                                 }
                                                                                 §§goto(addr328);
                                                                              }
                                                                              §§goto(addr337);
                                                                           }
                                                                           addr343:
                                                                           §§goto(addr348);
                                                                           §§push(_loc2_ * Math.pow(param1,2));
                                                                           addr381:
                                                                        }
                                                                        §§goto(addr377);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     break;
                                                                  }
                                                                  addr359:
                                                                  while(true)
                                                                  {
                                                                     §§push(2);
                                                                     if(_loc5_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(_loc5_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(§§pop() / §§pop());
                                                                  }
                                                                  continue loop1;
                                                                  §§goto(addr366);
                                                               }
                                                               §§push(Number(§§pop()));
                                                               break loop10;
                                                            }
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§push(0.9375);
                                                            §§goto(addr258);
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            break loop9;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                      §§goto(addr343);
                                                   }
                                                   §§goto(addr329);
                                                }
                                                param1 = §§pop();
                                                §§goto(addr381);
                                             }
                                             §§goto(addr117);
                                          }
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
                        §§goto(addr359);
                     }
                  }
               }
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               §§push(§§pop() * Math.pow(param1,2));
               if(_loc6_ || §8!>§)
               {
                  §§goto(addr83);
               }
               §§goto(addr110);
            }
         }
         §§goto(addr354);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §0!4§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §0!4§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §0!4§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            §§push(param3);
            if(_loc4_)
            {
               §§push(0.5);
               if(_loc4_ || param1)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc4_ || param3)
                     {
                        §§push(0.5);
                        if(_loc4_)
                        {
                           §§push(param1);
                           if(!_loc5_)
                           {
                              §§push(global);
                              if(_loc4_)
                              {
                                 §§push(param3);
                                 if(_loc4_)
                                 {
                                    §§push(2);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc4_ || param3)
                                          {
                                             §§goto(addr79);
                                          }
                                          else
                                          {
                                             §§goto(addr125);
                                          }
                                       }
                                       else
                                       {
                                          addr104:
                                          §§push(§§pop() - 0.5);
                                          if(!(_loc5_ && §8!>§))
                                          {
                                             addr102:
                                             §§push(2);
                                          }
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!(_loc5_ && param2))
                                          {
                                             addr124:
                                             addr125:
                                             return §§pop();
                                             §§push(§§pop() + 0.5);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr125);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§goto(addr104);
                              }
                              else
                              {
                                 addr85:
                                 §§push(param3);
                                 if(!(_loc5_ && param2))
                                 {
                                    §§goto(addr104);
                                 }
                              }
                              §§goto(addr102);
                           }
                           else
                           {
                              addr84:
                              §§push(global);
                           }
                           §§goto(addr85);
                        }
                        addr79:
                        return §§pop();
                     }
                     addr80:
                     §§push(0.5);
                     if(!_loc5_)
                     {
                        addr83:
                        §§goto(addr84);
                        §§push(param2);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr80);
               }
               §§goto(addr124);
            }
            §§goto(addr83);
         }
         §§goto(addr80);
      }
   }
}
