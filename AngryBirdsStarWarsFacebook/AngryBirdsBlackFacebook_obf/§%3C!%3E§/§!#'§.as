package §<!>§
{
   import §;8§.§["T§;
   import flash.utils.Dictionary;
   
   public class §!#'§
   {
      
      public static const §[!l§:String = "linear";
      
      public static const §5#0§:String = "easeIn";
      
      public static const §?!&§:String = "easeOut";
      
      public static const §#!o§:String = "easeInOut";
      
      public static const §-#U§:String = "easeOutIn";
      
      public static const §4%§:String = "easeInBack";
      
      public static const §7""§:String = "easeOutBack";
      
      public static const §`#0§:String = "easeInOutBack";
      
      public static const §`!'§:String = "easeOutInBack";
      
      public static const §5!J§:String = "easeInElastic";
      
      public static const §]!Z§:String = "easeOutElastic";
      
      public static const §&#3§:String = "easeInOutElastic";
      
      public static const §&!3§:String = "easeOutInElastic";
      
      public static const §3"2§:String = "easeInBounce";
      
      public static const §8D§:String = "easeOutBounce";
      
      public static const §3L§:String = "easeInOutBounce";
      
      public static const §0"V§:String = "easeOutInBounce";
      
      private static var §9#G§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §[!l§ = "linear";
            while(true)
            {
               §5#0§ = "easeIn";
               loop1:
               while(true)
               {
                  §?!&§ = "easeOut";
                  loop2:
                  while(true)
                  {
                     §#!o§ = "easeInOut";
                     addr150:
                     while(true)
                     {
                        §-#U§ = "easeOutIn";
                        addr143:
                        while(!_loc1_)
                        {
                           §4%§ = "easeInBack";
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §5!J§ = "easeInElastic";
            §§goto(addr98);
         }
      }
      
      public function §!#'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         throw new §["T§();
      }
      
      public static function §3"-§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§9#G§ == null)
            {
               if(_loc2_)
               {
                  §>"E§();
               }
            }
         }
         return §9#G§[param1];
      }
      
      public static function §@!z§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§9#G§ == null)
            {
               if(_loc3_)
               {
                  §>"E§();
                  addr58:
                  while(true)
                  {
                  }
                  addr58:
               }
               §§goto(addr58);
            }
            while(true)
            {
               §9#G§[param1] = param2;
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr58);
            }
            return;
         }
         §§goto(addr58);
      }
      
      private static function §>"E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §9#G§ = new Dictionary();
            loop0:
            while(true)
            {
               §@!z§(§[!l§,linear);
               while(true)
               {
                  §@!z§(§5#0§,easeIn);
                  loop12:
                  while(!(_loc2_ && §!#'§))
                  {
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     §@!z§(§&!3§,easeOutInElastic);
                     loop13:
                     while(true)
                     {
                        §@!z§(§3"2§,easeInBounce);
                        loop14:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              addr92:
                              if(_loc1_ || _loc2_)
                              {
                                 addr99:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    §@!z§(§8D§,easeOutBounce);
                                    loop15:
                                    while(!_loc2_)
                                    {
                                       §@!z§(§3L§,easeInOutBounce);
                                       while(true)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop15;
                                       }
                                       addr143:
                                       addr196:
                                       while(!(_loc2_ && _loc2_))
                                       {
                                          §@!z§(§&#3§,easeInOutElastic);
                                          break loop15;
                                       }
                                       while(_loc1_ || _loc2_)
                                       {
                                          §@!z§(§7""§,easeOutBack);
                                          while(true)
                                          {
                                             §@!z§(§`#0§,easeInOutBack);
                                             break loop14;
                                             §§goto(addr99);
                                          }
                                          §§goto(addr143);
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §@!z§(§?!&§,easeOut);
                                          addr221:
                                          while(true)
                                          {
                                             §@!z§(§#!o§,easeInOut);
                                             addr215:
                                             while(true)
                                             {
                                                §@!z§(§-#U§,easeOutIn);
                                                while(true)
                                                {
                                                   §@!z§(§4%§,easeInBack);
                                                   continue loop2;
                                                   addr54:
                                                   if(_loc1_ || _loc2_)
                                                   {
                                                      return;
                                                   }
                                                }
                                                break loop14;
                                             }
                                          }
                                       }
                                    }
                                    continue loop12;
                                 }
                                 §§goto(addr190);
                              }
                              break;
                           }
                           continue loop13;
                           if(!(_loc1_ || §!#'§))
                           {
                              continue;
                           }
                           addr47:
                           if(_loc1_ || _loc1_)
                           {
                              §§goto(addr54);
                           }
                           while(true)
                           {
                              if(!(_loc2_ && §!#'§))
                              {
                                 §@!z§(§]!Z§,easeOutElastic);
                                 §§goto(addr196);
                              }
                              break;
                              §§goto(addr47);
                           }
                           while(true)
                           {
                              §@!z§(§5!J§,easeInElastic);
                              §§goto(addr156);
                           }
                           addr156:
                           addr169:
                        }
                        while(true)
                        {
                           if(_loc1_ || §!#'§)
                           {
                              if(!_loc2_)
                              {
                                 §@!z§(§`!'§,easeOutInBack);
                                 §§goto(addr169);
                              }
                              §§goto(addr221);
                           }
                           break;
                           §§goto(addr92);
                        }
                        §§goto(addr215);
                     }
                  }
               }
            }
         }
         §§goto(addr227);
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
         if(!(_loc3_ && §!#'§))
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
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() - 1);
            if(_loc3_ || §!#'§)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && param1))
               {
                  addr74:
                  §§push(§§pop() * _loc2_);
                  if(_loc3_)
                  {
                     addr77:
                     return §§pop() + 1;
                  }
               }
            }
            §§goto(addr74);
         }
         §§goto(addr77);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §1"D§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §1"D§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(1.70158);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         return Math.pow(param1,2) * ((_loc2_ + 1) * param1 - _loc2_);
      }
      
      private static function easeOutBack(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(§§pop() - 1);
            if(!(_loc4_ && param1))
            {
               addr43:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1.70158);
            if(!(_loc4_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
            if(!_loc4_)
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr43);
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §1"D§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §1"D§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc5_ || _loc2_)
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
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr205:
                           while(true)
                           {
                              §§push(param1);
                              addr171:
                              while(true)
                              {
                                 §§push(1);
                                 addr172:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc5_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(!(_loc6_ && param1));
                                 
                                 continue loop2;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§push(0.3);
                              loop9:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop10:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop11:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc5_ || param1)
                                       {
                                          if(_loc6_ && param1)
                                          {
                                             continue loop10;
                                          }
                                          §§push(4);
                                          if(_loc5_ || param1)
                                          {
                                             if(_loc6_ && _loc3_)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() / §§pop());
                                             loop12:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                addr162:
                                                loop13:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop15:
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(param1);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr184:
                                                                     }
                                                                     §§push(-1 * Math.pow(2,10 * _loc4_));
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(!(_loc5_ || _loc2_))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue;
                                                                     break;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr114:
                                                            }
                                                            if(!(_loc5_ || §!#'§))
                                                            {
                                                               break;
                                                            }
                                                            continue loop12;
                                                            return §§pop();
                                                         }
                                                         continue loop0;
                                                      }
                                                      continue loop13;
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr172);
                                       }
                                       §§goto(addr162);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr184);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc5_)
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
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr181:
                           while(true)
                           {
                              §§push(param1);
                              while(true)
                              {
                                 §§push(1);
                                 addr143:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(!_loc4_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(_loc4_ || _loc3_);
                                 
                                 continue loop2;
                                 addr63:
                                 if(!(_loc5_ && §!#'§))
                                 {
                                    §§goto(addr70);
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop8:
                           while(true)
                           {
                              §§push(0.3);
                              if(_loc4_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              loop9:
                              while(_loc4_ || _loc2_)
                              {
                                 _loc2_ = §§pop();
                                 loop10:
                                 while(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc5_)
                                       {
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop9;
                                          }
                                          §§push(4);
                                          loop12:
                                          while(!(_loc5_ && _loc3_))
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() / §§pop());
                                             loop13:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc5_)
                                                   {
                                                      break;
                                                   }
                                                   if(!(_loc4_ || _loc2_))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(!(_loc4_ || _loc2_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§push(1);
                                                         if(!_loc4_)
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§goto(addr63);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr143);
                                       }
                                       §§goto(addr105);
                                    }
                                    addr70:
                                    return §§pop();
                                 }
                              }
                              continue loop0;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr139);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §1"D§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §1"D§(easeOutElastic,easeInElastic,param1);
      }
      
      private static function easeInBounce(param1:Number) : Number
      {
         return 1 - easeOutBounce(1 - param1);
      }
      
      private static function easeOutBounce(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         §§push(7.5625);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || _loc2_)
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
                                             if(_loc5_ || param1)
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   if(_loc5_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      addr379:
                                                      §§push(Number(§§pop()));
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      _loc4_ = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr377:
                                                   }
                                                   continue loop0;
                                                }
                                                loop10:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop11:
                                                      for(; _loc5_ || _loc2_; while(true)
                                                      {
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            continue loop11;
                                                         }
                                                         if(_loc5_ || §!#'§)
                                                         {
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§goto(addr147);
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  §§goto(addr268);
                                                                  §§push(0.9375);
                                                               }
                                                               §§goto(addr356);
                                                            }
                                                            addr260:
                                                         }
                                                         §§goto(addr167);
                                                      },§§goto(addr162))
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               param1 = §§pop();
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc5_ || param1)
                                                                  {
                                                                     §§push(§§pop() * Math.pow(param1,2));
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        §§push(0.984375);
                                                                        if(!(_loc6_ && _loc2_))
                                                                        {
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 addr118:
                                                                                 if(_loc6_ && param1)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    §§push(param1);
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_ || param1)
                                                                                       {
                                                                                          addr174:
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             if(_loc6_ && _loc2_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc3_);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   §§goto(addr395);
                                                                                                }
                                                                                                continue loop1;
                                                                                                addr389:
                                                                                             }
                                                                                             §§push(2.625);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc3_);
                                                                                                   if(!(_loc6_ && _loc2_))
                                                                                                   {
                                                                                                      addr202:
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_ && _loc2_)
                                                                                                         {
                                                                                                            break loop10;
                                                                                                         }
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      addr202:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr346:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         addr347:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr348:
                                                                                                            while(!(_loc6_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop17:
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  param1 = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && §!#'§))
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        break loop11;
                                                                                                                     }
                                                                                                                     addr397:
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        addr410:
                                                                                                                        §§push(param1);
                                                                                                                        §§push(1.5);
                                                                                                                        if(_loc5_ || §!#'§)
                                                                                                                        {
                                                                                                                           addr409:
                                                                                                                           §§push(§§pop() / _loc3_);
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop() - §§pop()));
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           param1 = §§pop();
                                                                                                                           addr369:
                                                                                                                           §§push(_loc2_ * Math.pow(param1,2));
                                                                                                                           break loop17;
                                                                                                                           addr415:
                                                                                                                        }
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  §§goto(addr377);
                                                                                                                  §§push(0.75);
                                                                                                               }
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      addr346:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc6_ && §!#'§))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         while(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(2.5);
                                                                                                               if(!(_loc6_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!(_loc6_ && §!#'§))
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && §!#'§))
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     §§goto(addr409);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr346);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                               §§goto(addr174);
                                                                                                            }
                                                                                                            §§goto(addr347);
                                                                                                         }
                                                                                                         break;
                                                                                                         addr396:
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         break loop12;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                                §§goto(addr397);
                                                                                                addr268:
                                                                                             }
                                                                                             §§goto(addr202);
                                                                                             §§goto(addr396);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr278);
                                                                                    }
                                                                                    addr167:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       §§push(2.25);
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§goto(addr346);
                                                                                             §§push(_loc3_);
                                                                                          }
                                                                                          §§goto(addr410);
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr356);
                                                                                 }
                                                                                 addr332:
                                                                              }
                                                                              §§goto(addr377);
                                                                           }
                                                                        }
                                                                        §§goto(addr202);
                                                                     }
                                                                     §§goto(addr369);
                                                                  }
                                                                  §§goto(addr118);
                                                                  addr147:
                                                                  _loc4_ = §§pop();
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     addr162:
                                                                     while(true)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     addr162:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc5_ || _loc2_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr382);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr415);
                                                                     addr282:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     §§goto(addr282);
                                                                  }
                                                                  break;
                                                                  §§goto(addr278);
                                                               }
                                                            }
                                                            §§goto(addr410);
                                                         }
                                                         §§goto(addr379);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr260);
                                                            §§push(§§pop() * Math.pow(param1,2));
                                                         }
                                                         §§goto(addr410);
                                                      }
                                                   }
                                                   §§goto(addr348);
                                                }
                                                continue loop3;
                                                §§goto(addr369);
                                             }
                                             §§goto(addr126);
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
                        §§goto(addr389);
                     }
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §1"D§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §1"D§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §1"D§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param3);
            if(_loc5_)
            {
               §§push(0.5);
               if(_loc5_ || §!#'§)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc4_ && param3))
                     {
                        addr38:
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(_loc5_ || param1)
                           {
                              §§push(global);
                              if(_loc5_ || param1)
                              {
                                 §§push(param3);
                                 if(!_loc4_)
                                 {
                                    §§push(2);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_)
                                          {
                                             return §§pop();
                                          }
                                          addr116:
                                          return §§pop() + 0.5;
                                          addr114:
                                       }
                                       else
                                       {
                                          addr95:
                                          §§push(§§pop() - 0.5);
                                          if(_loc5_)
                                          {
                                             addr93:
                                             §§push(2);
                                          }
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_ || param3)
                                          {
                                             §§goto(addr114);
                                          }
                                          §§goto(addr116);
                                       }
                                       §§goto(addr116);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§goto(addr95);
                              }
                              else
                              {
                                 addr86:
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    §§goto(addr95);
                                 }
                              }
                              §§goto(addr93);
                           }
                           else
                           {
                              addr85:
                              §§push(global);
                           }
                           §§goto(addr86);
                        }
                        else
                        {
                           addr84:
                           §§push(param2);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr116);
                  }
                  §§push(0.5);
                  if(!_loc4_)
                  {
                     §§goto(addr84);
                  }
               }
            }
            §§goto(addr116);
         }
         §§goto(addr38);
      }
   }
}
