package §^n§
{
   import §+8§.§0K§;
   import flash.utils.Dictionary;
   
   public class Transitions
   {
      
      public static const §1h§:String = "linear";
      
      public static const §@Z§:String = "easeIn";
      
      public static const §[X§:String = "easeOut";
      
      public static const §?;§:String = "easeInOut";
      
      public static const §0=§:String = "easeOutIn";
      
      public static const §=!E§:String = "easeInBack";
      
      public static const §6!R§:String = "easeOutBack";
      
      public static const §+M§:String = "easeInOutBack";
      
      public static const §"!+§:String = "easeOutInBack";
      
      public static const §4!8§:String = "easeInElastic";
      
      public static const §+!1§:String = "easeOutElastic";
      
      public static const §'!,§:String = "easeInOutElastic";
      
      public static const §8"§:String = "easeOutInElastic";
      
      public static const §3e§:String = "easeInBounce";
      
      public static const §3!U§:String = "easeOutBounce";
      
      public static const §9!f§:String = "easeInOutBounce";
      
      public static const §5i§:String = "easeOutInBounce";
      
      private static var §!!?§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §1h§ = "linear";
         }
         loop0:
         while(true)
         {
            §@Z§ = "easeIn";
            loop1:
            while(true)
            {
               §[X§ = "easeOut";
               loop2:
               while(true)
               {
                  §?;§ = "easeInOut";
                  while(true)
                  {
                     §0=§ = "easeOutIn";
                     loop4:
                     for(; !_loc2_; while(!(_loc2_ && Transitions))
                     {
                        if(_loc1_)
                        {
                           §+!1§ = "easeOutElastic";
                           §§goto(addr115);
                           continue;
                        }
                        continue loop0;
                     })
                     {
                        if(!_loc1_)
                        {
                           continue loop2;
                        }
                        §=!E§ = "easeInBack";
                        loop5:
                        while(true)
                        {
                           §6!R§ = "easeOutBack";
                           while(true)
                           {
                              §+M§ = "easeInOutBack";
                              addr155:
                              while(true)
                              {
                                 §"!+§ = "easeOutInBack";
                                 continue loop1;
                              }
                              loop11:
                              for(; _loc1_ || _loc1_; if(_loc2_ && _loc2_)
                              {
                                 continue;
                              },if(_loc2_)
                              {
                                 continue loop1;
                              },§9!f§ = "easeInOutBounce",§§goto(addr41))
                              {
                                 §8"§ = "easeOutInElastic";
                                 while(_loc1_ || Transitions)
                                 {
                                    §3e§ = "easeInBounce";
                                    loop13:
                                    while(true)
                                    {
                                       §3!U§ = "easeOutBounce";
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc1_ || _loc2_)
                                          {
                                             continue loop11;
                                          }
                                          continue loop13;
                                          addr41:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop14;
                                          }
                                          continue loop5;
                                       }
                                       continue loop1;
                                    }
                                    if(_loc1_ || Transitions)
                                    {
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(!(_loc2_ && Transitions))
                                    {
                                       if(!_loc1_)
                                       {
                                          break;
                                       }
                                       §'!,§ = "easeInOutElastic";
                                       continue loop11;
                                    }
                                    continue loop4;
                                    §§goto(addr81);
                                 }
                                 addr81:
                                 §§goto(addr155);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function Transitions()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
         throw new §0K§();
      }
      
      public static function §5T§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§!!?§ == null)
            {
               if(!(_loc3_ && Transitions))
               {
                  addr39:
                  §>R§();
               }
            }
            return §!!?§[param1];
         }
         §§goto(addr39);
      }
      
      public static function §false§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(§!!?§ == null)
            {
               while(true)
               {
                  §>R§();
                  while(true)
                  {
                  }
               }
               addr48:
            }
            do
            {
               §!!?§[param1] = param2;
               if(!_loc3_)
               {
                  continue;
               }
            }
            while(_loc4_);
            
            return;
         }
         §§goto(addr48);
      }
      
      private static function §>R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §!!?§ = new Dictionary();
            loop0:
            while(true)
            {
               §false§(§1h§,linear);
               loop1:
               while(true)
               {
                  §false§(§@Z§,easeIn);
                  loop2:
                  while(true)
                  {
                     §false§(§[X§,easeOut);
                     loop3:
                     for(; !_loc2_; while(_loc1_ || _loc2_)
                     {
                        §false§(§'!,§,easeInOutElastic);
                        §§goto(addr118);
                     })
                     {
                        §false§(§?;§,easeInOut);
                        while(true)
                        {
                           §false§(§0=§,easeOutIn);
                           while(true)
                           {
                              §false§(§=!E§,easeInBack);
                              addr212:
                              while(true)
                              {
                                 §false§(§6!R§,easeOutBack);
                                 continue loop1;
                              }
                              addr78:
                              if(_loc1_ || _loc1_)
                              {
                                 §false§(§9!f§,easeInOutBounce);
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    addr76:
                                    while(_loc1_)
                                    {
                                       §§goto(addr78);
                                    }
                                    §§goto(addr212);
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr96);
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
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || param1)
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
         if(!(_loc3_ && Transitions))
         {
            §§push(§§pop() - 1);
            if(_loc4_ || _loc3_)
            {
               addr44:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(!(_loc3_ && Transitions))
            {
               §§push(_loc2_);
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc3_)
                  {
                     addr76:
                     §§push(§§pop() * _loc2_);
                     if(_loc3_ && param1)
                     {
                     }
                     §§goto(addr86);
                  }
                  addr86:
                  return §§pop();
                  §§push(§§pop() + 1);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr44);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return § U§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return § U§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(1.70158);
         if(!_loc3_)
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
            if(!(_loc5_ && _loc2_))
            {
               addr48:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1.70158);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
            if(_loc4_)
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr48);
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return § U§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return § U§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && _loc3_))
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
                     §§push(Boolean(§§pop()));
                     while(true)
                     {
                        §§push(§§pop());
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr170:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc6_ && param1))
                                       {
                                          if(_loc6_ && Transitions)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                    addr125:
                                    if(!(_loc5_ || Transitions))
                                    {
                                       continue;
                                    }
                                    §§push(4);
                                    loop14:
                                    while(_loc5_ || _loc2_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       loop15:
                                       while(!_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                          loop16:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop17:
                                             while(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!(_loc6_ && Transitions))
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr110:
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!(_loc5_ || param1))
                                                                           {
                                                                              return param1;
                                                                           }
                                                                           addr212:
                                                                           addr213:
                                                                           §§push(-1 * Math.pow(2,10 * _loc4_));
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 break loop18;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                        }
                                                                        continue loop17;
                                                                        addr110:
                                                                     }
                                                                     §§goto(addr110);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        break loop17;
                                                                     }
                                                                     addr163:
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr125);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr213);
                                                                  }
                                                               }
                                                               continue loop6;
                                                               addr123:
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop16;
                                                      }
                                                      §§goto(addr110);
                                                   }
                                                   return §§pop();
                                                   addr159:
                                                }
                                                addr160:
                                                addr214:
                                                while(true)
                                                {
                                                   §§push(0.3);
                                                   break loop15;
                                                   §§goto(addr214);
                                                }
                                             }
                                             while(!_loc6_)
                                             {
                                                §§goto(addr123);
                                                §§push(_loc2_);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr163);
                                       }
                                    }
                                    §§goto(addr170);
                                 }
                              }
                           }
                        }
                        while(!§§pop())
                        {
                           §§goto(addr160);
                        }
                        §§goto(addr212);
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc5_)
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
                     §§push(Boolean(§§pop()));
                     if(_loc5_)
                     {
                        §§push(§§pop());
                        if(!(_loc4_ && _loc2_))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr199:
                              loop9:
                              while(true)
                              {
                                 §§push(param1);
                                 addr141:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr142:
                                    while(!(_loc4_ && _loc2_))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(_loc4_ && _loc2_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop9;
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           addr198:
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(0.3);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop6:
                                    while(!_loc4_)
                                    {
                                       if(_loc5_)
                                       {
                                          _loc2_ = §§pop();
                                          loop7:
                                          for(; !_loc4_; while(true)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc4_ && param1)
                                             {
                                                break;
                                             }
                                             if(!(_loc5_ || Transitions))
                                             {
                                                continue loop4;
                                             }
                                             if(!(_loc4_ && Transitions))
                                             {
                                                §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                                if(!(_loc4_ && Transitions))
                                                {
                                                   continue;
                                                }
                                                §§goto(addr72);
                                             }
                                             else
                                             {
                                                §§goto(addr199);
                                             }
                                          })
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                loop13:
                                                while(!_loc4_)
                                                {
                                                   §§push(4);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      addr95:
                                                      while(!(_loc4_ && _loc2_))
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            continue loop7;
                                                         }
                                                         continue loop0;
                                                      }
                                                      addr61:
                                                      continue loop6;
                                                      if(!(_loc5_ || _loc2_))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         addr72:
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop13;
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr142);
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                          addr179:
                                          §§push(param1);
                                          break;
                                       }
                                       §§goto(addr141);
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                           §§goto(addr179);
                        }
                     }
                     §§goto(addr198);
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return § U§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return § U§(easeOutElastic,easeInElastic,param1);
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
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(2.75);
         if(_loc6_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc6_)
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
                        if(§§pop() >= §§pop())
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(2);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(_loc3_);
                              if(_loc5_)
                              {
                                 continue loop2;
                              }
                              §§push(§§pop() / §§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(param1);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(2.5);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                continue loop5;
                                             }
                                             loop43:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                loop24:
                                                while(true)
                                                {
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop38:
                                                      while(true)
                                                      {
                                                         param1 = §§pop();
                                                         loop31:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            loop32:
                                                            while(true)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     §§push(§§pop() * Math.pow(param1,2));
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr220:
                                                                        §§push(0.9375);
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ && _loc2_))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop37:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          loop35:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         loop27:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_ || Transitions)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     addr119:
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(!(_loc5_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc5_ && param1)
                                                                                                                        {
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        if(_loc6_ || Transitions)
                                                                                                                        {
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           addr380:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr381:
                                                                                                                              loop29:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * Math.pow(param1,2));
                                                                                                                                 addr387:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr388:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc5_ && Transitions))
                                                                                                                              {
                                                                                                                                 addr281:
                                                                                                                                 §§push(param1);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             if(_loc6_ || param1)
                                                                                                                                             {
                                                                                                                                                §§push(2.25);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                   addr302:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc6_ || Transitions)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      addr363:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr364:
                                                                                                                                                         while(_loc6_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr372);
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                         }
                                                                                                                                                         continue loop3;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr301:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr387);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr373);
                                                                                                                                       }
                                                                                                                                       §§goto(addr323);
                                                                                                                                    }
                                                                                                                                    addr331:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr332:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop21;
                                                                                                                                             }
                                                                                                                                             addr335:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(1.5);
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr363);
                                                                                                                                                   §§push(_loc3_);
                                                                                                                                                }
                                                                                                                                                §§goto(addr364);
                                                                                                                                             }
                                                                                                                                             addr349:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr52);
                                                                                                                                    §§goto(addr281);
                                                                                                                                 }
                                                                                                                                 addr282:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr274:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop12:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              continue loop35;
                                                                                                                           }
                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc6_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!_loc6_)
                                                                                                                                 {
                                                                                                                                    continue loop24;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * Math.pow(param1,2));
                                                                                                                                 if(_loc5_ && Transitions)
                                                                                                                                 {
                                                                                                                                    continue loop27;
                                                                                                                                 }
                                                                                                                                 §§push(0.984375);
                                                                                                                                 if(_loc6_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             continue loop27;
                                                                                                                                          }
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                    addr154:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc6_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr302);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr364);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    addr161:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop38;
                                                                                                                                       }
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop37;
                                                                                                                                          }
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             param1 = §§pop();
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          §§goto(addr388);
                                                                                                                                          continue loop27;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr349);
                                                                                                                                 }
                                                                                                                                 addr348:
                                                                                                                              }
                                                                                                                              §§goto(addr364);
                                                                                                                           }
                                                                                                                           §§goto(addr374);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr154);
                                                                                                                        }
                                                                                                                        addr153:
                                                                                                                     }
                                                                                                                     §§goto(addr374);
                                                                                                                  }
                                                                                                                  §§goto(addr161);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr164);
                                                                                                         }
                                                                                                         continue loop6;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         continue loop32;
                                                                                                      }
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         addr52:
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            return §§pop();
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr373:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1 = §§pop();
                                                                                                            addr374:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               addr323:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * Math.pow(param1,2));
                                                                                                                  break loop21;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop40;
                                                                                                         }
                                                                                                      }
                                                                                                      addr372:
                                                                                                      §§goto(addr374);
                                                                                                   }
                                                                                                   §§goto(addr110);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(0.75);
                                                                                                   addr330:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr331);
                                                                                                   }
                                                                                                   continue loop32;
                                                                                                }
                                                                                                addr329:
                                                                                             }
                                                                                             §§goto(addr335);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr282);
                                                                                 }
                                                                                 addr226:
                                                                              }
                                                                              §§goto(addr330);
                                                                           }
                                                                           §§goto(addr301);
                                                                        }
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                                  §§goto(addr381);
                                                               }
                                                               §§goto(addr329);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr332);
                                                }
                                             }
                                             addr310:
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr310);
                                    }
                                    continue;
                                 }
                                 §§goto(addr348);
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr380);
                     }
                  }
               }
            }
         }
         §§goto(addr374);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return § U§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return § U§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function § U§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            §§push(param3);
            if(!(_loc4_ && param3))
            {
               §§push(0.5);
               if(_loc5_ || param1)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_)
                     {
                        §§goto(addr43);
                     }
                     else
                     {
                        addr91:
                        §§push(0.5);
                        if(_loc5_ || param2)
                        {
                           §§goto(addr110);
                           §§push(param2);
                        }
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr91);
               }
               §§goto(addr131);
            }
            §§goto(addr61);
         }
         addr43:
         §§push(0.5);
         if(_loc5_ || Transitions)
         {
            addr61:
            §§push(param1);
            if(_loc5_ || param3)
            {
               §§push(global);
               if(!_loc4_)
               {
                  §§goto(addr125);
               }
               else
               {
                  addr111:
                  §§push(param3);
                  if(_loc5_ || Transitions)
                  {
                     §§push(§§pop() - 0.5);
                     if(!_loc4_)
                     {
                        §§goto(addr123);
                     }
                     addr125:
                     §§push(param3);
                     if(_loc5_)
                     {
                        §§push(2);
                        if(_loc5_)
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
                                 §§goto(addr131);
                              }
                           }
                           else
                           {
                              addr123:
                              §§push(2);
                           }
                           §§goto(addr131);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() * §§pop()(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr131);
                     }
                     addr131:
                     return §§pop() + 0.5;
                  }
               }
               §§goto(addr123);
            }
            else
            {
               addr110:
               §§push(global);
            }
            §§goto(addr111);
         }
         addr90:
         return §§pop();
      }
   }
}
