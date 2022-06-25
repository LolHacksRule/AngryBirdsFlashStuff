package §2!9§
{
   import §"v§.§2!;§;
   import flash.utils.Dictionary;
   
   public class Transitions
   {
      
      public static const §>T§:String = "linear";
      
      public static const §^!A§:String = "easeIn";
      
      public static const §]U§:String = "easeOut";
      
      public static const §#4§:String = "easeInOut";
      
      public static const §-D§:String = "easeOutIn";
      
      public static const §6!i§:String = "easeInBack";
      
      public static const §-!1§:String = "easeOutBack";
      
      public static const §0t§:String = "easeInOutBack";
      
      public static const §<!f§:String = "easeOutInBack";
      
      public static const §7!M§:String = "easeInElastic";
      
      public static const §3U§:String = "easeOutElastic";
      
      public static const §9t§:String = "easeInOutElastic";
      
      public static const §=r§:String = "easeOutInElastic";
      
      public static const §!!A§:String = "easeInBounce";
      
      public static const §^t§:String = "easeOutBounce";
      
      public static const §8!Z§:String = "easeInOutBounce";
      
      public static const §?q§:String = "easeOutInBounce";
      
      private static var §%S§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || Transitions)
         {
            §>T§ = "linear";
            while(true)
            {
               §^!A§ = "easeIn";
               while(true)
               {
                  §]U§ = "easeOut";
                  while(true)
                  {
                     §#4§ = "easeInOut";
                     while(!_loc1_)
                     {
                        §-D§ = "easeOutIn";
                        loop4:
                        while(true)
                        {
                           §6!i§ = "easeInBack";
                           addr173:
                           while(true)
                           {
                              §-!1§ = "easeOutBack";
                              addr168:
                              while(true)
                              {
                                 §0t§ = "easeInOutBack";
                                 continue loop4;
                              }
                           }
                        }
                        while(_loc2_ || _loc1_)
                        {
                           §^t§ = "easeOutBounce";
                           §§goto(addr94);
                           §§goto(addr35);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function Transitions()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         throw new §2!;§();
      }
      
      public static function §;b§(param1:String) : Function
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(§%S§ == null)
            {
               if(!_loc2_)
               {
                  §]!"§();
               }
            }
         }
         return §%S§[param1];
      }
      
      public static function § null§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(§%S§ == null)
            {
               while(true)
               {
                  §]!"§();
                  while(true)
                  {
                  }
               }
               addr48:
            }
            do
            {
               §%S§[param1] = param2;
               if(!_loc3_)
               {
                  continue;
               }
            }
            while(!_loc3_);
            
            return;
         }
         §§goto(addr48);
      }
      
      private static function §]!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%S§ = new Dictionary();
            loop0:
            while(true)
            {
               § null§(§>T§,linear);
               while(true)
               {
                  § null§(§^!A§,easeIn);
                  loop2:
                  for(; _loc1_ || Transitions; while(!(_loc2_ && _loc1_))
                  {
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     § null§(§=r§,easeOutInElastic);
                     §§goto(addr136);
                  })
                  {
                     § null§(§]U§,easeOut);
                     loop3:
                     while(true)
                     {
                        § null§(§#4§,easeInOut);
                        addr235:
                        loop4:
                        while(true)
                        {
                           § null§(§-D§,easeOutIn);
                           loop5:
                           while(true)
                           {
                              § null§(§6!i§,easeInBack);
                              while(true)
                              {
                                 § null§(§-!1§,easeOutBack);
                                 addr208:
                                 while(true)
                                 {
                                    § null§(§0t§,easeInOutBack);
                                    addr199:
                                    loop8:
                                    while(true)
                                    {
                                       § null§(§<!f§,easeOutInBack);
                                       while(true)
                                       {
                                          § null§(§7!M§,easeInElastic);
                                          addr181:
                                          while(true)
                                          {
                                             § null§(§3U§,easeOutElastic);
                                             continue loop4;
                                          }
                                          addr74:
                                          if(!(_loc2_ && Transitions))
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop3;
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                                 loop15:
                                 for(; !(_loc2_ && _loc2_); if(!(_loc1_ || Transitions))
                                 {
                                    continue;
                                 },if(!_loc2_)
                                 {
                                    return;
                                 },§§goto(addr181))
                                 {
                                    if(_loc1_)
                                    {
                                       § null§(§8!Z§,easeInOutBounce);
                                       while(true)
                                       {
                                          if(!(_loc2_ && Transitions))
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!(_loc1_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr74);
                                             }
                                             else
                                             {
                                                while(_loc1_)
                                                {
                                                   § null§(§!!A§,easeInBounce);
                                                   while(true)
                                                   {
                                                      § null§(§^t§,easeOutBounce);
                                                      continue loop15;
                                                   }
                                                }
                                                §§goto(addr208);
                                                addr136:
                                             }
                                             §§goto(addr199);
                                          }
                                          §§goto(addr117);
                                          addr90:
                                          § null§(§?q§,easeOutInBounce);
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             continue loop15;
                                          }
                                       }
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr235);
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
         if(!(_loc2_ && Transitions))
         {
            §§push(param1);
            if(!(_loc2_ && Transitions))
            {
               §§goto(addr48);
            }
            §§push(§§pop() * §§pop());
         }
         addr48:
         §§push(§§pop() * §§pop());
         if(_loc3_)
         {
            return param1;
         }
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() - 1);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               §§goto(addr48);
            }
            §§push(§§pop() * §§pop());
            if(!_loc3_)
            {
            }
            §§goto(addr48);
         }
         addr48:
         §§push(§§pop() * §§pop());
         if(!_loc4_)
         {
            §§push(_loc2_);
         }
         return §§pop() + 1;
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §40§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §40§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(_loc3_ || Transitions)
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
         if(!(_loc5_ && _loc2_))
         {
            §§push(§§pop() - 1);
            if(!_loc5_)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1.70158);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(Math.pow(_loc2_,2) * ((_loc3_ + 1) * _loc2_ + _loc3_));
            if(_loc4_ || _loc2_)
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr38);
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §40§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §40§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
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
                  if(_loc5_)
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && param1))
                     {
                        §§push(Boolean(§§pop()));
                     }
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
                              while(true)
                              {
                                 §§push(1);
                                 addr173:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    addr184:
                                 }
                                 while(_loc5_ || param1);
                                 
                                 continue loop2;
                                 loop10:
                                 while(!(_loc6_ && Transitions))
                                 {
                                    _loc2_ = §§pop();
                                    loop11:
                                    while(_loc5_ || _loc2_)
                                    {
                                       §§push(_loc2_);
                                       loop12:
                                       while(!_loc6_)
                                       {
                                          §§push(4);
                                          loop13:
                                          for(; !_loc6_; §§push(1),if(!(_loc5_ || Transitions))
                                          {
                                             continue;
                                          },if(!(_loc6_ && _loc3_))
                                          {
                                             §§goto(addr120);
                                             §§push(§§pop() - §§pop());
                                          },§§goto(addr173))
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop14:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                while(!_loc6_)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop16:
                                                   while(_loc5_ || _loc3_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         continue loop13;
                                                      }
                                                      addr120:
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop18:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            _loc4_ = §§pop();
                                                            if(!_loc5_)
                                                            {
                                                               continue loop16;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            if(!_loc6_)
                                                            {
                                                               §§push(-1 * Math.pow(2,10 * _loc4_));
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               addr66:
                                                               if(_loc5_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               continue;
                                                            }
                                                            addr203:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               break loop18;
                                                            }
                                                         }
                                                         addr204:
                                                         while(_loc6_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         return §§pop();
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                continue loop10;
                                             }
                                          }
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          continue loop10;
                                       }
                                    }
                                    addr207:
                                    while(true)
                                    {
                                       §§goto(addr153);
                                       §§goto(addr207);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr151);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr203);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!(_loc5_ && _loc2_))
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
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(Boolean(§§pop()));
                  }
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc4_ || Transitions)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(0.3);
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    if(_loc5_)
                                    {
                                       break;
                                    }
                                    §§push(Number(§§pop()));
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop6:
                                    while(!_loc5_)
                                    {
                                       §§push(_loc2_);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(4);
                                          loop8:
                                          while(_loc4_ || _loc3_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   if(!(_loc4_ || _loc3_))
                                                   {
                                                      return §§pop();
                                                   }
                                                   addr174:
                                                   _loc3_ = §§pop();
                                                   if(_loc4_ || param1)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            break loop3;
                                                         }
                                                         break;
                                                      }
                                                      addr171:
                                                      §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                                      if(!_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr71:
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop6;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   addr138:
                                                   §§push(param1);
                                                   §§push(1);
                                                   addr197:
                                                   break loop8;
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop11;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                          }
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc4_ || Transitions)
                                             {
                                                if(_loc5_ && _loc3_)
                                                {
                                                   §§goto(addr197);
                                                }
                                                if(_loc4_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop3;
                                                }
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr171);
                        }
                        addr173:
                        §§goto(addr174);
                        §§push(param1);
                     }
                     §§goto(addr197);
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §40§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §40§(easeOutElastic,easeInElastic,param1);
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
         if(!(_loc6_ && Transitions))
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
                           if(_loc5_ || _loc2_)
                           {
                              §§push(2);
                              if(!(_loc5_ || Transitions))
                              {
                                 break;
                              }
                              §§push(_loc3_);
                              if(_loc6_ && _loc2_)
                              {
                                 continue loop2;
                              }
                              §§push(§§pop() / §§pop());
                              if(_loc5_ || param1)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(param1);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(2.5);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          loop6:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop() >= §§pop())
                                                {
                                                   §§push(param1);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         §§push(2.625);
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!(_loc5_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc3_);
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(_loc6_ && _loc3_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§push(§§pop() / §§pop());
                                                               loop39:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_ || Transitions)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop31:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                param1 = §§pop();
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(_loc2_);
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ || Transitions)
                                                                                                            {
                                                                                                               if(!(_loc6_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * Math.pow(param1,2));
                                                                                                                     loop23:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           §§push(0.984375);
                                                                                                                           if(!(_loc5_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue loop39;
                                                                                                                           }
                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(_loc6_ && _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          break loop31;
                                                                                                                                       }
                                                                                                                                       addr346:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc5_ || param1)
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 addr139:
                                                                                                                                 if(!(_loc6_ && Transitions))
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          addr41:
                                                                                                                                          addr312:
                                                                                                                                          addr313:
                                                                                                                                          loop20:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc4_);
                                                                                                                                             if(_loc5_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ || param1))
                                                                                                                                                {
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                if(_loc6_ && Transitions)
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                addr64:
                                                                                                                                                if(!(_loc6_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                   addr404:
                                                                                                                                                   addr404:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop24:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         param1 = §§pop();
                                                                                                                                                         addr406:
                                                                                                                                                         addr337:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            break loop30;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_ && Transitions)
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            addr344:
                                                                                                                                                            §§push(0.75);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr346);
                                                                                                                                                               §§goto(addr344);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr279:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                         addr280:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc5_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_ || Transitions)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               addr423:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  addr304:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(2.25);
                                                                                                                                                                     break loop21;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr303:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr64);
                                                                                                                                                   }
                                                                                                                                                   addr278:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr139);
                                                                                                                                             }
                                                                                                                                             §§goto(addr280);
                                                                                                                                          }
                                                                                                                                          addr312:
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   addr317:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr318:
                                                                                                                                                      while(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         param1 = §§pop();
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr316:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   addr403:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr404);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr402:
                                                                                                                                             }
                                                                                                                                             §§goto(addr404);
                                                                                                                                             §§goto(addr312);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr165:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc6_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc2_);
                                                                                                                                          while(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * Math.pow(param1,2));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0.9375);
                                                                                                                                                addr275:
                                                                                                                                                while(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr278);
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                }
                                                                                                                                                §§goto(addr316);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop4;
                                                                                                                                          addr266:
                                                                                                                                       }
                                                                                                                                       addr348:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr41);
                                                                                                                                          }
                                                                                                                                          §§goto(addr406);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr280);
                                                                                                                              }
                                                                                                                              §§goto(addr403);
                                                                                                                           }
                                                                                                                           §§goto(addr275);
                                                                                                                        }
                                                                                                                        §§goto(addr318);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr422:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc4_ = §§pop();
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr421:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr422);
                                                                                                                  }
                                                                                                                  §§goto(addr423);
                                                                                                               }
                                                                                                               §§goto(addr304);
                                                                                                            }
                                                                                                            §§goto(addr279);
                                                                                                         }
                                                                                                         addr263:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_ || param1)
                                                                                                            {
                                                                                                               §§goto(addr312);
                                                                                                            }
                                                                                                            §§goto(addr345);
                                                                                                         }
                                                                                                         addr305:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() * Math.pow(param1,2));
                                                                                                            }
                                                                                                         }
                                                                                                         addr412:
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param1);
                                                                                                         break loop29;
                                                                                                      }
                                                                                                      addr397:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(1.5);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr402);
                                                                                                      }
                                                                                                      addr401:
                                                                                                   }
                                                                                                   §§goto(addr403);
                                                                                                }
                                                                                                addr398:
                                                                                                addr254:
                                                                                             }
                                                                                             §§goto(addr421);
                                                                                          }
                                                                                          §§goto(addr398);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr317);
                                                                                 }
                                                                                 §§goto(addr266);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 §§goto(addr348);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr274);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr337);
                                                                     }
                                                                  }
                                                                  §§goto(addr305);
                                                               }
                                                               addr215:
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      §§goto(addr337);
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr303);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr397);
                              }
                              §§goto(addr401);
                           }
                           §§goto(addr404);
                        }
                        §§goto(addr412);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §40§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §40§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §40§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §§push(param3);
            if(_loc4_)
            {
               §§push(0.5);
               if(_loc4_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!_loc5_)
                     {
                        §§push(0.5);
                        if(_loc4_)
                        {
                           §§push(param1);
                           if(_loc4_ || Transitions)
                           {
                              §§push(global);
                              if(!(_loc5_ && param2))
                              {
                                 §§push(param3);
                                 if(_loc4_)
                                 {
                                    §§push(2);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc4_ || Transitions)
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          addr90:
                                          addr89:
                                          addr88:
                                          §§push(param2);
                                          §§push(global);
                                          §§push(param3);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() - 0.5);
                                             if(_loc5_)
                                             {
                                             }
                                             §§goto(addr104);
                                          }
                                          §§push(2);
                                       }
                                       §§goto(addr104);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr104:
                                 §§push(§§pop() * §§pop()(§§pop()));
                                 if(!_loc5_)
                                 {
                                    addr108:
                                    return §§pop() + 0.5;
                                 }
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr88);
                     }
                     else
                     {
                        addr85:
                        §§push(0.5);
                        if(!_loc5_)
                        {
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr85);
               }
               §§goto(addr108);
            }
            §§goto(addr90);
         }
         §§goto(addr85);
      }
   }
}
