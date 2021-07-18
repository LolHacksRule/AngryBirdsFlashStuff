package §[!-§
{
   import §]u§.§<=§;
   import flash.utils.Dictionary;
   
   public class §-1§
   {
      
      public static const §]!=§:String = "linear";
      
      public static const §;P§:String = "easeIn";
      
      public static const §;`§:String = "easeOut";
      
      public static const §1! §:String = "easeInOut";
      
      public static const §!!L§:String = "easeOutIn";
      
      public static const §use §:String = "easeInBack";
      
      public static const §2F§:String = "easeOutBack";
      
      public static const §]!J§:String = "easeInOutBack";
      
      public static const §2M§:String = "easeOutInBack";
      
      public static const §+a§:String = "easeInElastic";
      
      public static const §<A§:String = "easeOutElastic";
      
      public static const §[7§:String = "easeInOutElastic";
      
      public static const §8t§:String = "easeOutInElastic";
      
      public static const §;H§:String = "easeInBounce";
      
      public static const §]h§:String = "easeOutBounce";
      
      public static const §"T§:String = "easeInOutBounce";
      
      public static const §8;§:String = "easeOutInBounce";
      
      private static var §]!;§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §]!=§ = "linear";
            loop0:
            while(true)
            {
               §;P§ = "easeIn";
               while(true)
               {
                  §;`§ = "easeOut";
                  loop2:
                  while(true)
                  {
                     §1! § = "easeInOut";
                     loop3:
                     for(; !_loc2_; while(_loc1_ || §-1§)
                     {
                        §2F§ = "easeOutBack";
                        §§goto(addr141);
                     })
                     {
                        §!!L§ = "easeOutIn";
                        while(true)
                        {
                           §use § = "easeInBack";
                           continue loop3;
                           addr141:
                           while(_loc1_ || _loc2_)
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
         §§goto(addr116);
      }
      
      public function §-1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         throw new §<=§();
      }
      
      public static function §6!0§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§]!;§ == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr48:
                  §4!A§();
               }
            }
            return §]!;§[param1];
         }
         §§goto(addr48);
      }
      
      public static function §!>§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && §-1§))
         {
            if(§]!;§ == null)
            {
               if(!_loc3_)
               {
                  addr67:
                  §4!A§();
               }
               while(true)
               {
                  §§goto(addr39);
               }
            }
            addr39:
            while(true)
            {
               §]!;§[param1] = param2;
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr67);
      }
      
      private static function §4!A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §]!;§ = new Dictionary();
            loop0:
            while(true)
            {
               §!>§(§]!=§,linear);
               while(true)
               {
                  §!>§(§;P§,easeIn);
                  while(true)
                  {
                     §!>§(§;`§,easeOut);
                     loop3:
                     while(true)
                     {
                        §!>§(§1! §,easeInOut);
                        while(_loc2_)
                        {
                           §!>§(§!!L§,easeOutIn);
                           loop5:
                           while(true)
                           {
                              §!>§(§use §,easeInBack);
                              addr157:
                              while(true)
                              {
                                 §!>§(§2F§,easeOutBack);
                                 addr151:
                                 while(true)
                                 {
                                    §!>§(§]!J§,easeInOutBack);
                                    while(_loc2_)
                                    {
                                       §!>§(§2M§,easeOutInBack);
                                       loop9:
                                       while(_loc2_ || _loc2_)
                                       {
                                          §!>§(§+a§,easeInElastic);
                                          while(true)
                                          {
                                             §!>§(§<A§,easeOutElastic);
                                             addr116:
                                             while(_loc2_)
                                             {
                                                §!>§(§[7§,easeInOutElastic);
                                                loop12:
                                                while(true)
                                                {
                                                   §!>§(§8t§,easeOutInElastic);
                                                   addr83:
                                                   while(true)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         continue loop9;
                                                      }
                                                      continue loop12;
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                       }
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
         }
         §§goto(addr36);
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
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc3_)
               {
                  addr52:
                  return §§pop() * param1;
               }
            }
         }
         §§goto(addr52);
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - 1);
            if(_loc4_)
            {
               addr33:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  §§goto(addr65);
               }
               §§push(§§pop() * §§pop());
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
            }
            addr65:
            §§push(§§pop() * §§pop());
            if(!(_loc3_ && param1))
            {
               return _loc2_;
            }
         }
         §§goto(addr33);
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §&_§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §&_§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(1.70158);
         if(!(_loc3_ && §-1§))
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
         if(!_loc4_)
         {
            §§push(§§pop() - 1);
            if(_loc5_ || _loc3_)
            {
               addr28:
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
            if(_loc5_ || param1)
            {
               return §§pop() + 1;
            }
         }
         §§goto(addr28);
      }
      
      private static function easeInOutBack(param1:Number) : Number
      {
         return §&_§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §&_§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc6_ && §-1§))
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
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr190:
                           loop15:
                           while(true)
                           {
                              §§push(param1);
                              addr163:
                              while(true)
                              {
                                 §§push(1);
                                 addr164:
                                 do
                                 {
                                    §§push(§§pop() == §§pop());
                                 }
                                 while(_loc5_);
                                 
                                 continue loop15;
                              }
                           }
                        }
                        addr189:
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
                                    while(_loc5_)
                                    {
                                       if(_loc6_)
                                       {
                                          break loop5;
                                       }
                                       §§push(_loc2_);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(4);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop8:
                                             while(!_loc6_)
                                             {
                                                §§push(Number(§§pop()));
                                                loop9:
                                                for(; _loc5_ || §-1§; while(_loc5_ || _loc2_)
                                                {
                                                   §§goto(addr100);
                                                   §§push(§§pop() - 1);
                                                   §§goto(addr68);
                                                })
                                                {
                                                   _loc3_ = §§pop();
                                                   while(_loc5_ || param1)
                                                   {
                                                      §§push(param1);
                                                      continue loop9;
                                                      addr114:
                                                      _loc4_ = §§pop();
                                                      if(_loc6_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(-1 * Math.pow(2,10 * _loc4_));
                                                            if(_loc5_)
                                                            {
                                                               addr41:
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr61:
                                                                  §§push(§§pop() * Math.sin((_loc4_ - _loc3_) * (2 * Math.PI) / _loc2_));
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     addr68:
                                                                     if(!(_loc6_ && §-1§))
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  addr100:
                                                                  while(_loc5_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     §§goto(addr61);
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               while(!_loc6_)
                                                               {
                                                                  if(!(_loc5_ || _loc3_))
                                                                  {
                                                                     §§goto(addr170);
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  §§goto(addr114);
                                                                  §§goto(addr41);
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr61);
                                                         }
                                                         return §§pop();
                                                         addr124:
                                                      }
                                                      §§goto(addr190);
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr163);
                                             }
                                             continue loop5;
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr164);
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                        addr170:
                        return §§pop();
                     }
                  }
                  §§goto(addr189);
               }
            }
         }
         §§goto(addr124);
      }
      
      private static function easeOutElastic(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc4_)
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
                        while(true)
                        {
                           §§pop();
                           addr196:
                           loop14:
                           while(true)
                           {
                              §§push(param1);
                              addr150:
                              while(true)
                              {
                                 §§push(1);
                                 addr151:
                                 while(true)
                                 {
                                    if(!(_loc4_ || §-1§))
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_ && _loc2_)
                                    {
                                       break;
                                    }
                                    if(_loc5_ && param1)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 continue loop14;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              return param1;
                           }
                           else
                           {
                              loop5:
                              while(true)
                              {
                                 addr127:
                                 while(true)
                                 {
                                    §§push(0.3);
                                    loop7:
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr140:
                                                while(_loc4_ || _loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   continue loop7;
                                                }
                                                addr109:
                                                §§goto(addr196);
                                                for(; _loc4_ || _loc2_; if(_loc4_ || _loc2_)
                                                {
                                                   return §§pop();
                                                })
                                                {
                                                   _loc3_ = §§pop();
                                                   if(_loc4_ || §-1§)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                                      if(!_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc4_ || §-1§))
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!(_loc4_ || param1))
                                                      {
                                                         continue loop7;
                                                      }
                                                      addr59:
                                                      §§push(1);
                                                      if(_loc4_ || §-1§)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         continue;
                                                      }
                                                      addr98:
                                                      while(_loc4_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         continue loop0;
                                                         §§goto(addr59);
                                                      }
                                                      §§goto(addr151);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                }
                                             }
                                          }
                                          break;
                                       }
                                    }
                                    §§goto(addr150);
                                 }
                              }
                           }
                           return §§pop();
                        }
                        §§goto(addr127);
                     }
                  }
               }
            }
         }
         §§goto(addr196);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §&_§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §&_§(easeOutElastic,easeInElastic,param1);
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
         if(_loc6_ || _loc3_)
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
                              if(_loc5_)
                              {
                                 break;
                              }
                              §§push(_loc3_);
                              if(!_loc6_)
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
                                    while(true)
                                    {
                                       §§push(2.5);
                                       loop7:
                                       while(true)
                                       {
                                          if(!_loc5_)
                                          {
                                             if(!(_loc6_ || param1))
                                             {
                                                break;
                                             }
                                             §§push(_loc3_);
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      §§push(param1);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ && §-1§))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(2.625);
                                                               while(!(_loc5_ && §-1§))
                                                               {
                                                                  if(!(_loc5_ && §-1§))
                                                                  {
                                                                     if(_loc6_ || _loc2_)
                                                                     {
                                                                        §§push(_loc3_);
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr390:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() / §§pop());
                                                                              addr391:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       param1 = §§pop();
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          addr349:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * Math.pow(param1,2));
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                §§push(0.75);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr365:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc4_ = §§pop();
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      addr151:
                                                                                                      addr151:
                                                                                                      addr237:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_ || §-1§)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            if(!(_loc6_ || §-1§))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               if(!_loc6_)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               if(_loc6_ || §-1§)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               addr380:
                                                                                                               addr380:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(param1);
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc5_ && _loc2_))
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  addr307:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && §-1§))
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc5_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(2.25);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 addr326:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr365);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop4;
                                                                                                                        addr315:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr400:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc2_);
                                                                                                                        if(_loc6_)
                                                                                                                        {
                                                                                                                           addr413:
                                                                                                                           §§push(§§pop() * Math.pow(param1,2));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              §§goto(addr413);
                                                                                                                           }
                                                                                                                           addr418:
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               addr276:
                                                                                                               addr420:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(_loc6_ || _loc2_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc6_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  param1 = §§pop();
                                                                                                                  loop36:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc2_);
                                                                                                                     addr254:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        §§push(§§pop() * Math.pow(param1,2));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc6_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           §§push(0.9375);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              if(!_loc5_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr275:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       §§goto(addr276);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr274:
                                                                                                                              }
                                                                                                                              §§goto(addr325);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop36;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr335:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            §§goto(addr420);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                         {
                                                                                                            if(!(_loc5_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(_loc2_);
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            continue loop35;
                                                                                                         }
                                                                                                         §§goto(addr346);
                                                                                                      }
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   continue loop9;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        addr389:
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                                  §§goto(addr391);
                                                                  if(_loc5_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_ || _loc2_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!(_loc5_ && §-1§))
                                                                              {
                                                                                 if(_loc6_ || §-1§)
                                                                                 {
                                                                                    §§goto(addr151);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr418);
                                                                              }
                                                                              §§goto(addr254);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr236:
                                                                                 while(true)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                 }
                                                                              }
                                                                              addr235:
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     §§goto(addr151);
                                                                  }
                                                                  §§goto(addr269);
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§goto(addr315);
                                                         }
                                                         §§goto(addr261);
                                                      }
                                                   }
                                                   §§goto(addr307);
                                                }
                                                §§goto(addr390);
                                             }
                                          }
                                          §§goto(addr364);
                                       }
                                       continue loop3;
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       if(_loc6_)
                                       {
                                          §§goto(addr102);
                                       }
                                       §§goto(addr349);
                                    }
                                 }
                                 §§goto(addr380);
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr400);
                     }
                  }
               }
            }
         }
         §§goto(addr380);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §&_§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §&_§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §&_§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param3);
            if(!(_loc4_ && param1))
            {
               §§push(0.5);
               if(!(_loc4_ && param1))
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        §§push(0.5);
                        if(!(_loc4_ && §-1§))
                        {
                           §§push(param1);
                           if(!_loc4_)
                           {
                              §§push(global);
                              if(_loc5_)
                              {
                                 §§push(param3);
                                 if(!_loc4_)
                                 {
                                    §§push(2);
                                    if(_loc5_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc4_ && param2))
                                       {
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_ || param3)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       else
                                       {
                                          addr109:
                                          §§push(§§pop() * §§pop()(§§pop() * 2));
                                          if(!(_loc4_ && param1))
                                          {
                                             addr129:
                                             return §§pop() + 0.5;
                                          }
                                       }
                                       return §§pop();
                                    }
                                 }
                                 §§goto(addr109);
                              }
                              else
                              {
                                 addr101:
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop() - 0.5);
                                    if(!_loc4_)
                                    {
                                       §§goto(addr109);
                                    }
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
                        else
                        {
                           addr99:
                           §§push(param2);
                        }
                        §§goto(addr100);
                     }
                     else
                     {
                        addr96:
                        §§push(0.5);
                        if(_loc5_)
                        {
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr96);
               }
               §§goto(addr129);
            }
            §§goto(addr99);
         }
         §§goto(addr96);
      }
   }
}
