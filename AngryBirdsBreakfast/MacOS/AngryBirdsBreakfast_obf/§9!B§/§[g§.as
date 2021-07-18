package §9!B§
{
   import §'O§.§1,§;
   import flash.utils.Dictionary;
   
   public class §[g§
   {
      
      public static const §8!A§:String = "linear";
      
      public static const §7!V§:String = "easeIn";
      
      public static const §in§:String = "easeOut";
      
      public static const §]!-§:String = "easeInOut";
      
      public static const §8"$§:String = "easeOutIn";
      
      public static const §>9§:String = "easeInBack";
      
      public static const §7V§:String = "easeOutBack";
      
      public static const §3`§:String = "easeInOutBack";
      
      public static const §0c§:String = "easeOutInBack";
      
      public static const § !;§:String = "easeInElastic";
      
      public static const §,!t§:String = "easeOutElastic";
      
      public static const §3!I§:String = "easeInOutElastic";
      
      public static const §,!<§:String = "easeOutInElastic";
      
      public static const §4!A§:String = "easeInBounce";
      
      public static const §1!f§:String = "easeOutBounce";
      
      public static const § !n§:String = "easeInOutBounce";
      
      public static const §,"!§:String = "easeOutInBounce";
      
      private static var §-!F§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!A§ = "linear";
            loop0:
            while(true)
            {
               §7!V§ = "easeIn";
               while(true)
               {
                  §in§ = "easeOut";
                  loop2:
                  while(!(_loc2_ && _loc1_))
                  {
                     §]!-§ = "easeInOut";
                     loop3:
                     while(true)
                     {
                        §8"$§ = "easeOutIn";
                        loop4:
                        while(true)
                        {
                           §>9§ = "easeInBack";
                           loop5:
                           while(true)
                           {
                              §7V§ = "easeOutBack";
                              while(!_loc2_)
                              {
                                 §3`§ = "easeInOutBack";
                                 loop7:
                                 while(_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                    §0c§ = "easeOutInBack";
                                    loop8:
                                    while(true)
                                    {
                                       § !;§ = "easeInElastic";
                                       loop9:
                                       for(; _loc1_; loop11:
                                       while(_loc1_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §,!<§ = "easeOutInElastic";
                                             loop13:
                                             while(!_loc2_)
                                             {
                                                §4!A§ = "easeInBounce";
                                                continue loop2;
                                                while(true)
                                                {
                                                   if(_loc1_ || §[g§)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop5;
                                                   }
                                                   continue loop13;
                                                   addr66:
                                                   §,"!§ = "easeOutInBounce";
                                                   if(!(_loc1_ || _loc1_))
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   if(_loc2_ && §[g§)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(_loc1_)
                                                   {
                                                      return;
                                                   }
                                                   §§goto(addr124);
                                                }
                                                continue loop8;
                                             }
                                             continue loop11;
                                          }
                                       })
                                       {
                                          §,!t§ = "easeOutElastic";
                                          while(true)
                                          {
                                             §3!I§ = "easeInOutElastic";
                                             continue loop9;
                                          }
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              continue loop4;
                              if(_loc2_ && _loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr66);
                           }
                        }
                     }
                     while(!(_loc2_ && §[g§))
                     {
                        §1!f§ = "easeOutBounce";
                        continue loop0;
                        §§goto(addr36);
                     }
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      public function §[g§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         throw new §1,§();
      }
      
      public static function §!!A§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§-!F§ == null)
            {
               if(_loc2_)
               {
                  §3!P§();
               }
            }
         }
         return §-!F§[param1];
      }
      
      public static function §0!!§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            if(§-!F§ == null)
            {
               if(!(_loc4_ && §[g§))
               {
                  addr66:
                  §3!P§();
               }
               while(true)
               {
               }
               addr68:
            }
            while(true)
            {
               §-!F§[param1] = param2;
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr66);
      }
      
      private static function §3!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-!F§ = new Dictionary();
            while(true)
            {
               §0!!§(§8!A§,linear);
               loop1:
               for(; _loc1_; while(!(_loc2_ && §[g§))
               {
                  §0!!§(§]!-§,easeInOut);
                  §§goto(addr206);
                  §§goto(addr134);
               })
               {
                  §0!!§(§7!V§,easeIn);
                  while(true)
                  {
                     §0!!§(§in§,easeOut);
                     continue loop1;
                     loop6:
                     for(; !(_loc2_ && §[g§); if(_loc1_ || _loc1_)
                     {
                        return;
                     })
                     {
                        §0!!§(§7V§,easeOutBack);
                        while(true)
                        {
                           §0!!§(§3`§,easeInOutBack);
                           loop8:
                           while(true)
                           {
                              §0!!§(§0c§,easeOutInBack);
                              while(true)
                              {
                                 §0!!§(§ !;§,easeInElastic);
                                 continue loop8;
                                 addr127:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §0!!§(§3!I§,easeInOutElastic);
                                    loop12:
                                    while(true)
                                    {
                                       §0!!§(§,!<§,easeOutInElastic);
                                       loop13:
                                       while(_loc1_)
                                       {
                                          §0!!§(§4!A§,easeInBounce);
                                          while(true)
                                          {
                                             if(_loc2_ && _loc2_)
                                             {
                                                continue loop13;
                                             }
                                             if(!(_loc1_ || §[g§))
                                             {
                                                break;
                                             }
                                             §0!!§(§1!f§,easeOutBounce);
                                             loop15:
                                             while(true)
                                             {
                                                §0!!§(§ !n§,easeInOutBounce);
                                                while(true)
                                                {
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop12;
                                             }
                                          }
                                          continue loop8;
                                       }
                                       addr206:
                                       while(true)
                                       {
                                          §0!!§(§8"$§,easeOutIn);
                                          addr200:
                                          while(true)
                                          {
                                             §0!!§(§>9§,easeInBack);
                                             continue loop6;
                                          }
                                       }
                                    }
                                    if(_loc1_ || _loc2_)
                                    {
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              §0!!§(§,!t§,easeOutElastic);
                              §§goto(addr127);
                           }
                           §§goto(addr200);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr111);
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
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || param1)
               {
                  addr57:
                  return §§pop() * param1;
               }
            }
         }
         §§goto(addr57);
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - 1);
            if(!(_loc3_ && _loc2_))
            {
               addr28:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr78);
               }
               §§goto(addr60);
            }
            addr60:
            §§push(§§pop() * _loc2_);
            if(!(_loc3_ && §[g§))
            {
               addr78:
               return §§pop() + 1;
            }
         }
         §§goto(addr28);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §[!L§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §[!L§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(1.70158);
         if(_loc4_ || param1)
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
         if(_loc5_)
         {
            §§push(§§pop() - 1);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
         if(_loc5_)
         {
            return §§pop() + 1;
         }
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §[!L§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §[!L§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_)
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
                           addr201:
                           while(true)
                           {
                              §§push(param1);
                              addr167:
                              while(true)
                              {
                                 §§push(1);
                                 addr168:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(_loc6_);
                                 
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
                              while(!_loc5_)
                              {
                                 §§push(Number(§§pop()));
                                 loop10:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    addr164:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr133:
                                       while(true)
                                       {
                                          §§push(4);
                                          if(_loc6_)
                                          {
                                             if(_loc5_ && §[g§)
                                             {
                                                break;
                                             }
                                             §§push(§§pop() / §§pop());
                                             continue loop0;
                                          }
                                          §§goto(addr168);
                                       }
                                       continue loop1;
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       if(!(_loc6_ || param1))
                                       {
                                          continue loop10;
                                       }
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       _loc4_ = §§pop();
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          loop15:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr175:
                                                   §§push(param1);
                                                   break;
                                                }
                                                §§push(param1);
                                                if(!(_loc6_ || param1))
                                                {
                                                   continue loop16;
                                                }
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(_loc5_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      continue loop16;
                                                   }
                                                   addr152:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      continue loop15;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr133);
                                                }
                                             }
                                             else if(!(_loc5_ && _loc3_))
                                             {
                                                continue loop8;
                                             }
                                          }
                                          addr176:
                                          return §§pop();
                                       }
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(-1 * Math.pow(2,10 * _loc4_));
                                          if(!(_loc5_ && param1))
                                          {
                                             addr42:
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                                continue;
                                             }
                                             continue loop0;
                                          }
                                          continue;
                                       }
                                       §§goto(addr164);
                                       §§goto(addr201);
                                    }
                                    continue loop9;
                                 }
                              }
                              §§goto(addr167);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr175);
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
                           loop4:
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§push(1);
                              loop5:
                              while(_loc4_)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       while(!§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(0.3);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc2_);
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§push(4);
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  break loop11;
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                               loop13:
                                                               do
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  while(!_loc5_)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     if(_loc5_ && §[g§)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                                                        if(_loc4_ || §[g§)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        addr63:
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  break loop4;
                                                               }
                                                               while(!_loc4_);
                                                               
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  return §§pop();
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                       break loop4;
                                       addr135:
                                    }
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr135);
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §[!L§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §[!L§(easeOutElastic,easeInElastic,param1);
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
         if(!(_loc5_ && _loc2_))
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
                                             if(_loc6_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      break;
                                                   }
                                                   loop10:
                                                   while(_loc6_ || _loc3_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         loop11:
                                                         for(; _loc5_ && param1; while(true)
                                                         {
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(_loc6_)
                                                            {
                                                               if(!(_loc6_ || §[g§))
                                                               {
                                                                  continue loop8;
                                                               }
                                                               §§push(_loc2_);
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§goto(addr62);
                                                               }
                                                               §§goto(addr123);
                                                            }
                                                            §§goto(addr287);
                                                         },§§goto(addr287))
                                                         {
                                                            loop12:
                                                            for(; !(_loc5_ && _loc2_); param1 = §§pop())
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     §§push(§§pop() * Math.pow(param1,2));
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(0.9375);
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || _loc3_)
                                                                           {
                                                                              addr241:
                                                                              §§push(Number(§§pop() + §§pop()));
                                                                              continue loop10;
                                                                           }
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc5_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 loop16:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       addr287:
                                                                                       §§push(param1);
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          §§push(2.25);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                addr298:
                                                                                                §§push(_loc3_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   addr299:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               continue loop12;
                                                                                                            }
                                                                                                            addr340:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               break loop12;
                                                                                                            }
                                                                                                         }
                                                                                                         addr310:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr363:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            addr364:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               addr365:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1 = §§pop();
                                                                                                                  addr366:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr332:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * Math.pow(param1,2));
                                                                                                                        break loop10;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr363:
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr298:
                                                                                             }
                                                                                             addr338:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                addr339:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       continue loop0;
                                                                                       addr287:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(param1);
                                                                                       loop17:
                                                                                       for(; _loc6_; while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && §[g§))
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             _loc4_ = §§pop();
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          continue loop17;
                                                                                       },§§goto(addr332))
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             continue loop6;
                                                                                          }
                                                                                          §§push(2.625);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc5_ && param1))
                                                                                                            {
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  if(_loc6_ || §[g§)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           param1 = §§pop();
                                                                                                                           continue loop11;
                                                                                                                        }
                                                                                                                        §§goto(addr287);
                                                                                                                        addr62:
                                                                                                                        if(!(_loc6_ || param1))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           §§push(§§pop() * Math.pow(param1,2));
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              addr123:
                                                                                                                              while(!(_loc5_ && §[g§))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                              addr123:
                                                                                                                           }
                                                                                                                           if(_loc6_)
                                                                                                                           {
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           §§goto(addr241);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr339);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr198:
                                                                                                                  }
                                                                                                                  §§goto(addr365);
                                                                                                               }
                                                                                                               §§goto(addr310);
                                                                                                            }
                                                                                                            §§goto(addr198);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr361:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               addr362:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr363);
                                                                                                               }
                                                                                                            }
                                                                                                            addr361:
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(0.984375);
                                                                                                      addr89:
                                                                                                      break;
                                                                                                      if(_loc5_ && _loc3_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      if(_loc6_ || §[g§)
                                                                                                      {
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         if(_loc5_ && _loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     addr360:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr361);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr359:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  §§goto(addr287);
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(2);
                                                                                                               if(!(_loc6_ || param1))
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(_loc3_);
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               §§goto(addr358);
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                            }
                                                                                                            addr358:
                                                                                                            continue loop1;
                                                                                                            addr346:
                                                                                                         }
                                                                                                         if(!(_loc6_ || §[g§))
                                                                                                         {
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§goto(addr123);
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr290);
                                                                                                   }
                                                                                                   §§goto(addr299);
                                                                                                   addr166:
                                                                                                }
                                                                                                §§goto(addr362);
                                                                                             }
                                                                                             §§goto(addr298);
                                                                                          }
                                                                                          §§goto(addr166);
                                                                                       }
                                                                                       §§goto(addr364);
                                                                                    }
                                                                                    §§goto(addr363);
                                                                                 }
                                                                              }
                                                                              §§goto(addr298);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr361);
                                                               }
                                                               §§goto(addr366);
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop9;
                                                            }
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr338);
                                                   }
                                                }
                                                §§goto(addr123);
                                             }
                                             §§goto(addr131);
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
                        §§goto(addr346);
                     }
                  }
               }
            }
         }
         §§goto(addr266);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §[!L§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §[!L§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §[!L§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param3);
            if(_loc5_ || §[g§)
            {
               §§push(0.5);
               if(_loc5_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc4_ && param1))
                     {
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(!(_loc4_ && §[g§))
                           {
                              §§push(global);
                              if(_loc5_ || §[g§)
                              {
                                 §§push(param3);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(2);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && param2))
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!_loc4_)
                                          {
                                             §§goto(addr90);
                                          }
                                          else
                                          {
                                             addr126:
                                             return §§pop() + 0.5;
                                             addr124:
                                          }
                                       }
                                       else
                                       {
                                          addr105:
                                          §§push(§§pop() - 0.5);
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                          }
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_ || §[g§)
                                          {
                                             §§goto(addr124);
                                          }
                                          §§goto(addr126);
                                       }
                                       §§goto(addr126);
                                    }
                                    §§goto(addr105);
                                    §§push(§§pop() * §§pop());
                                 }
                                 §§goto(addr105);
                              }
                              else
                              {
                                 addr96:
                                 §§push(param3);
                                 if(!_loc4_)
                                 {
                                    §§goto(addr105);
                                 }
                              }
                              §§goto(addr105);
                           }
                           else
                           {
                              addr95:
                              §§push(global);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr126);
                     }
                     else
                     {
                        addr91:
                        §§push(0.5);
                        if(_loc5_)
                        {
                           §§goto(addr95);
                           §§push(param2);
                        }
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr91);
               }
               §§goto(addr126);
            }
            addr90:
            return §§pop();
         }
         §§goto(addr91);
      }
   }
}
