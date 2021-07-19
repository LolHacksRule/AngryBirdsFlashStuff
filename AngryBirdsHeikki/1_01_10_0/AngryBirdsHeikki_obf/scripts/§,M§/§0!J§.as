package §,M§
{
   import §2i§.§'u§;
   import flash.utils.Dictionary;
   
   public class §0!J§
   {
      
      public static const § !H§:String = "linear";
      
      public static const §[i§:String = "easeIn";
      
      public static const §!]§:String = "easeOut";
      
      public static const §5_§:String = "easeInOut";
      
      public static const §=>§:String = "easeOutIn";
      
      public static const §[`§:String = "easeInBack";
      
      public static const §1!J§:String = "easeOutBack";
      
      public static const §&s§:String = "easeInOutBack";
      
      public static const §%!d§:String = "easeOutInBack";
      
      public static const §<!2§:String = "easeInElastic";
      
      public static const §!g§:String = "easeOutElastic";
      
      public static const §9!a§:String = "easeInOutElastic";
      
      public static const §;!?§:String = "easeOutInElastic";
      
      public static const §69§:String = "easeInBounce";
      
      public static const §1e§:String = "easeOutBounce";
      
      public static const §8E§:String = "easeInOutBounce";
      
      public static const §[!J§:String = "easeOutInBounce";
      
      private static var §]l§:Dictionary;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §0!J§))
         {
            § !H§ = "linear";
            while(true)
            {
               §[i§ = "easeIn";
               loop1:
               while(_loc2_ || _loc2_)
               {
                  §!]§ = "easeOut";
                  loop2:
                  while(true)
                  {
                     §5_§ = "easeInOut";
                     loop3:
                     while(true)
                     {
                        §=>§ = "easeOutIn";
                        loop4:
                        while(true)
                        {
                           §[`§ = "easeInBack";
                           while(!_loc1_)
                           {
                              §1!J§ = "easeOutBack";
                              loop6:
                              for(; !(_loc1_ && §0!J§); if(_loc1_ && §0!J§)
                              {
                                 continue;
                              },if(_loc1_)
                              {
                                 continue loop4;
                              },§§goto(addr51))
                              {
                                 §&s§ = "easeInOutBack";
                                 loop7:
                                 while(true)
                                 {
                                    §%!d§ = "easeOutInBack";
                                    loop8:
                                    while(true)
                                    {
                                       §<!2§ = "easeInElastic";
                                       while(_loc2_)
                                       {
                                          §!g§ = "easeOutElastic";
                                          loop10:
                                          while(_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop7;
                                             }
                                             §9!a§ = "easeInOutElastic";
                                             loop11:
                                             while(true)
                                             {
                                                §;!?§ = "easeOutInElastic";
                                                while(_loc2_)
                                                {
                                                   §69§ = "easeInBounce";
                                                   loop13:
                                                   while(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §1e§ = "easeOutBounce";
                                                            loop15:
                                                            while(_loc2_)
                                                            {
                                                               §8E§ = "easeInOutBounce";
                                                               while(true)
                                                               {
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     if(_loc1_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop13;
                                                         }
                                                         return;
                                                         addr51:
                                                         addr81:
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop11;
                                                   if(!(_loc1_ && _loc1_))
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §0!J§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         throw new §'u§();
      }
      
      public static function §`!;§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§]l§ == null)
            {
               if(!_loc3_)
               {
                  §[A§();
               }
            }
         }
         return §]l§[param1];
      }
      
      public static function §#?§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(§]l§ == null)
            {
               if(!_loc3_)
               {
                  §[A§();
               }
               while(true)
               {
                  §§goto(addr39);
               }
            }
            addr39:
            §§goto(addr61);
         }
         addr61:
         while(true)
         {
            §]l§[param1] = param2;
            if(!(_loc3_ && §0!J§))
            {
               break;
            }
            continue loop0;
         }
      }
      
      private static function §[A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §]l§ = new Dictionary();
            loop0:
            while(true)
            {
               §#?§(§ !H§,linear);
               while(true)
               {
                  §#?§(§[i§,easeIn);
                  while(!_loc1_)
                  {
                     §#?§(§!]§,easeOut);
                     while(true)
                     {
                        §#?§(§5_§,easeInOut);
                        while(true)
                        {
                           §#?§(§=>§,easeOutIn);
                           loop5:
                           while(true)
                           {
                              §#?§(§[`§,easeInBack);
                              while(true)
                              {
                                 §#?§(§1!J§,easeOutBack);
                                 continue loop5;
                                 addr45:
                                 if(_loc2_ || §0!J§)
                                 {
                                    return;
                                    addr52:
                                 }
                              }
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           §#?§(§1e§,easeOutBounce);
                           while(true)
                           {
                              §#?§(§8E§,easeInOutBounce);
                              loop16:
                              for(; _loc2_; while(true)
                              {
                                 §#?§(§[!J§,easeOutInBounce);
                                 if(!(_loc2_ || §0!J§))
                                 {
                                    continue loop16;
                                 }
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§goto(addr45);
                                    }
                                    else
                                    {
                                       addr124:
                                       while(!(_loc1_ && §0!J§))
                                       {
                                          §#?§(§;!?§,easeOutInElastic);
                                          loop13:
                                          while(true)
                                          {
                                             §#?§(§69§,easeInBounce);
                                             addr81:
                                             while(true)
                                             {
                                                if(!(_loc2_ || §0!J§))
                                                {
                                                   continue loop13;
                                                }
                                                §§goto(addr88);
                                             }
                                             §§goto(addr137);
                                          }
                                       }
                                       while(true)
                                       {
                                          §#?§(§<!2§,easeInElastic);
                                          §§goto(addr157);
                                          §§goto(addr124);
                                       }
                                       addr124:
                                       addr163:
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr81);
                              },§§goto(addr52))
                              {
                                 addr60:
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 addr157:
                                 while(true)
                                 {
                                    §#?§(§!g§,easeOutElastic);
                                    §§goto(addr137);
                                    §§goto(addr60);
                                 }
                              }
                           }
                        }
                        if(_loc1_ && §0!J§)
                        {
                           continue;
                        }
                        §#?§(§9!a§,easeInOutElastic);
                        §§goto(addr124);
                     }
                  }
               }
            }
         }
         §§goto(addr69);
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            if(_loc2_)
            {
               §§goto(addr52);
            }
            §§push(§§pop() * §§pop());
         }
         addr52:
         §§push(§§pop() * §§pop());
         if(_loc2_)
         {
            return param1;
         }
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
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
            if(!(_loc4_ && _loc3_))
            {
               §§goto(addr74);
            }
            §§push(§§pop() * §§pop());
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
            }
         }
         addr74:
         §§push(§§pop() * §§pop());
         if(!(_loc4_ && param1))
         {
            return _loc2_;
         }
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §4!=§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §4!=§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(1.70158);
         if(!(_loc3_ && _loc2_))
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
         if(_loc4_ || §0!J§)
         {
            §§push(§§pop() - 1);
            if(_loc4_)
            {
               addr27:
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
            if(!(_loc5_ && _loc3_))
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr27);
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §4!=§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §4!=§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_ || param1)
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
                  if(!_loc5_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           loop11:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc6_ || _loc3_))
                              {
                                 addr169:
                              }
                              §§push(1);
                              loop12:
                              while(!(_loc5_ && _loc3_))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!_loc6_)
                                 {
                                    continue loop11;
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§push(0.3);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop5:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc6_)
                                                   {
                                                      §§push(4);
                                                      if(_loc5_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      while(!_loc5_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      continue loop0;
                                                      addr130:
                                                   }
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  addr106:
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc6_ || §0!J§)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        §§goto(addr76);
                                                                     }
                                                                     break;
                                                                     if(!(_loc6_ || _loc3_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_ && _loc2_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     addr76:
                                                                     return §§pop();
                                                                     §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                                                  }
                                                                  §§goto(addr130);
                                                               }
                                                               addr140:
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                }
                                                continue loop12;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                              return §§pop();
                           }
                        }
                        addr195:
                     }
                     §§goto(addr166);
                  }
                  §§goto(addr195);
               }
            }
         }
         §§goto(addr140);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc4_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr201:
                           loop11:
                           while(true)
                           {
                              §§push(param1);
                              addr169:
                              while(true)
                              {
                                 §§push(1);
                                 addr170:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 while(!_loc5_);
                                 
                                 continue loop11;
                              }
                           }
                        }
                        addr200:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(0.3);
                              loop4:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc4_ || §0!J§))
                                       {
                                          break loop5;
                                       }
                                       §§push(_loc2_);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(4);
                                          while(true)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(§§pop() / §§pop());
                                                if(_loc4_)
                                                {
                                                   while(_loc4_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr176:
                                                   return §§pop();
                                                   addr122:
                                                }
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               addr82:
                                                               if(_loc4_ || §0!J§)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr169);
                                                            }
                                                            break;
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr201);
                                             }
                                             §§push(1);
                                             addr71:
                                             break;
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             if(!_loc4_)
                                             {
                                                continue loop1;
                                             }
                                             §§goto(addr82);
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr170);
                                       }
                                       §§goto(addr122);
                                    }
                                 }
                                 addr175:
                                 §§goto(addr176);
                              }
                           }
                        }
                        §§goto(addr175);
                     }
                  }
                  §§goto(addr200);
               }
               if(!(_loc4_ || §0!J§))
               {
                  continue;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr175);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §4!=§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §4!=§(easeOutElastic,easeInElastic,param1);
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
         if(!(_loc5_ && param1))
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
         if(!(_loc5_ && §0!J§))
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
                           while(true)
                           {
                              §§push(_loc2_);
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
                                          §§goto(addr42);
                                       }
                                    }
                                 }
                              }
                              if(_loc6_ || param1)
                              {
                                 addr42:
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§push(0.984375);
                                                   if(!(_loc5_ && §0!J§))
                                                   {
                                                      if(_loc6_ || §0!J§)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_ || param1)
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr108:
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr283:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       addr284:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(2.25);
                                                                                          addr285:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             addr286:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc5_ && §0!J§))
                                                                                                      {
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            if(_loc6_ || param1)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1 = §§pop();
                                                                                                                  addr310:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     continue loop42;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr309:
                                                                                                            }
                                                                                                            §§goto(addr354);
                                                                                                         }
                                                                                                         §§goto(addr320);
                                                                                                      }
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                   addr289:
                                                                                                }
                                                                                                §§goto(addr352);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr283:
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(!(_loc6_ || param1))
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.pow(param1,2));
                                                                                          continue loop10;
                                                                                       }
                                                                                       loop16:
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                param1 = §§pop();
                                                                                                continue loop19;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                          addr327:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(2);
                                                                                             if(!(_loc6_ || _loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(_loc3_);
                                                                                             if(_loc5_ && param1)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§push(§§pop() / §§pop());
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   addr268:
                                                                                                   §§push(param1);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(2.5);
                                                                                                      loop12:
                                                                                                      while(!_loc5_)
                                                                                                      {
                                                                                                         §§push(_loc3_);
                                                                                                         loop13:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            addr275:
                                                                                                            while(!(_loc5_ && §0!J§))
                                                                                                            {
                                                                                                               if(§§pop() >= §§pop())
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && §0!J§))
                                                                                                                        {
                                                                                                                           §§push(2.625);
                                                                                                                           if(_loc6_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       if(!_loc6_)
                                                                                                                                       {
                                                                                                                                          continue loop22;
                                                                                                                                       }
                                                                                                                                       §§push(_loc3_);
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop13;
                                                                                                                                       }
                                                                                                                                       §§goto(addr286);
                                                                                                                                    }
                                                                                                                                    §§goto(addr353);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr285);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr233);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr170:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc6_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop16;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr170:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr225);
                                                                                                                     }
                                                                                                                     §§goto(addr234);
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                                  addr129:
                                                                                                               }
                                                                                                               §§goto(addr283);
                                                                                                            }
                                                                                                            §§goto(addr319);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr351);
                                                                                                      §§goto(addr268);
                                                                                                   }
                                                                                                   addr270:
                                                                                                }
                                                                                                §§goto(addr347);
                                                                                             }
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§goto(addr284);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr247);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr178);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        §§goto(addr356);
                                                                     }
                                                                     addr108:
                                                                  }
                                                                  §§goto(addr321);
                                                               }
                                                               §§goto(addr270);
                                                            }
                                                            §§goto(addr108);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr242);
                                          }
                                          §§goto(addr129);
                                       }
                                    }
                                    §§goto(addr108);
                                 }
                              }
                              continue;
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§push(param1);
                        }
                        §§goto(addr327);
                     }
                  }
               }
            }
         }
         §§goto(addr283);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §4!=§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §4!=§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §4!=§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            §§push(param3);
            if(!(_loc4_ && param3))
            {
               §§push(0.5);
               if(_loc5_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_ || param1)
                     {
                        addr43:
                        §§push(0.5);
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(_loc5_)
                           {
                              §§push(global);
                              if(_loc5_)
                              {
                                 §§push(param3);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(2);
                                    if(_loc5_ || param2)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && param3))
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!_loc4_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr131);
                                       }
                                       else
                                       {
                                          addr109:
                                          §§push(§§pop() - 0.5);
                                          if(_loc5_)
                                          {
                                             §§push(2);
                                          }
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(!_loc4_)
                                          {
                                             addr130:
                                             addr131:
                                             return §§pop();
                                             §§push(§§pop() + 0.5);
                                          }
                                          §§goto(addr131);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                              else
                              {
                                 addr101:
                                 §§push(param3);
                                 if(!(_loc4_ && §0!J§))
                                 {
                                    §§goto(addr109);
                                 }
                              }
                              §§goto(addr109);
                           }
                           else
                           {
                              addr100:
                              §§push(global);
                           }
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr131);
                  }
                  §§push(0.5);
                  if(!(_loc4_ && §0!J§))
                  {
                     §§goto(addr100);
                     §§push(param2);
                  }
                  §§goto(addr131);
               }
               §§goto(addr130);
            }
            §§goto(addr131);
         }
         §§goto(addr43);
      }
   }
}
