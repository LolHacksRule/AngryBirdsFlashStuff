package §"H§
{
   import §4!S§.§#!s§;
   import flash.utils.Dictionary;
   
   public class §-]§
   {
      
      public static const §7Q§:String = "linear";
      
      public static const §&R§:String = "easeIn";
      
      public static const §;8§:String = "easeOut";
      
      public static const §0!X§:String = "easeInOut";
      
      public static const § !l§:String = "easeOutIn";
      
      public static const §2X§:String = "easeInBack";
      
      public static const §^!H§:String = "easeOutBack";
      
      public static const §4"§:String = "easeInOutBack";
      
      public static const §<!I§:String = "easeOutInBack";
      
      public static const §#N§:String = "easeInElastic";
      
      public static const §&<§:String = "easeOutElastic";
      
      public static const §`!#§:String = "easeInOutElastic";
      
      public static const §>x§:String = "easeOutInElastic";
      
      public static const §9e§:String = "easeInBounce";
      
      public static const §#o§:String = "easeOutBounce";
      
      public static const §#!0§:String = "easeInOutBounce";
      
      public static const §?d§:String = "easeOutInBounce";
      
      private static var §%H§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §7Q§ = "linear";
            loop0:
            while(true)
            {
               §&R§ = "easeIn";
               while(true)
               {
                  §;8§ = "easeOut";
                  continue loop0;
                  addr41:
                  if(_loc1_ || _loc1_)
                  {
                     §?d§ = "easeOutInBounce";
                     addr48:
                     if(_loc2_)
                     {
                        while(!_loc2_)
                        {
                           §§goto(addr41);
                           §§goto(addr48);
                        }
                        loop14:
                        while(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              addr57:
                              if(_loc1_ || §-]§)
                              {
                                 addr64:
                                 if(_loc1_ || §-]§)
                                 {
                                    while(true)
                                    {
                                       §#!0§ = "easeInOutBounce";
                                       §§goto(addr39);
                                    }
                                    addr71:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       § !l§ = "easeOutIn";
                                       addr162:
                                       while(true)
                                       {
                                          §2X§ = "easeInBack";
                                          addr157:
                                          while(true)
                                          {
                                             §^!H§ = "easeOutBack";
                                             while(true)
                                             {
                                                §4"§ = "easeInOutBack";
                                                addr135:
                                                while(!_loc2_)
                                                {
                                                   §<!I§ = "easeOutInBack";
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr64);
                                    }
                                    addr167:
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §#N§ = "easeInElastic";
                                    loop9:
                                    while(_loc1_)
                                    {
                                       §&<§ = "easeOutElastic";
                                       while(!(_loc2_ && §-]§))
                                       {
                                          §`!#§ = "easeInOutElastic";
                                          while(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §>x§ = "easeOutInElastic";
                                                while(_loc1_)
                                                {
                                                   §9e§ = "easeInBounce";
                                                   break loop14;
                                                }
                                                continue loop9;
                                                addr93:
                                             }
                                             §§goto(addr157);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr162);
                                 }
                                 break;
                                 §§goto(addr57);
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr93);
                        }
                        addr39:
                        while(_loc1_)
                        {
                           §#o§ = "easeOutBounce";
                           §§goto(addr53);
                        }
                        addr53:
                        §§goto(addr100);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §-]§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
         throw new §#!s§();
      }
      
      public static function §!M§(param1:String) : Function
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§%H§ == null)
            {
               if(!_loc3_)
               {
                  addr23:
                  §]g§();
               }
            }
            return §%H§[param1];
         }
         §§goto(addr23);
      }
      
      public static function §`R§(param1:String, param2:Function) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(§%H§ == null)
            {
               if(!_loc3_)
               {
                  §]g§();
               }
               while(true)
               {
               }
               addr49:
            }
            while(true)
            {
               §%H§[param1] = param2;
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr49);
            }
         }
      }
      
      private static function §]g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%H§ = new Dictionary();
            loop0:
            while(true)
            {
               §`R§(§7Q§,linear);
               while(true)
               {
                  §`R§(§&R§,easeIn);
                  loop2:
                  while(true)
                  {
                     §`R§(§;8§,easeOut);
                     while(true)
                     {
                        §`R§(§0!X§,easeInOut);
                        while(_loc1_ || _loc1_)
                        {
                           §`R§(§ !l§,easeOutIn);
                           while(_loc1_ || _loc2_)
                           {
                              §`R§(§2X§,easeInBack);
                              continue loop2;
                           }
                        }
                     }
                  }
                  addr86:
                  if(!(_loc1_ || §-]§))
                  {
                     continue;
                  }
                  §`R§(§#o§,easeOutBounce);
                  loop15:
                  while(true)
                  {
                     if(!(_loc2_ && §-]§))
                     {
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                        §`R§(§#!0§,easeInOutBounce);
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              addr49:
                              if(_loc2_ && §-]§)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop15;
                        }
                        while(true)
                        {
                           if(_loc1_ || _loc1_)
                           {
                              §`R§(§>x§,easeOutInElastic);
                              §§goto(addr109);
                           }
                           break;
                           §§goto(addr49);
                        }
                        while(true)
                        {
                           §`R§(§&<§,easeOutElastic);
                           §§goto(addr130);
                           §§goto(addr117);
                        }
                        addr117:
                        addr136:
                     }
                     addr142:
                     while(true)
                     {
                        §`R§(§#N§,easeInElastic);
                        §§goto(addr136);
                        continue loop15;
                     }
                  }
               }
            }
         }
         §§goto(addr142);
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
               §§goto(addr33);
            }
            §§push(§§pop() * §§pop());
         }
         addr33:
         §§push(§§pop() * §§pop());
         if(_loc3_ || _loc2_)
         {
            return param1;
         }
      }
      
      private static function easeOut(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() - 1);
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(!(_loc4_ && _loc2_))
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() * §§pop());
               if(!_loc4_)
               {
                  §§goto(addr69);
               }
               §§goto(addr77);
            }
            §§goto(addr69);
         }
         addr69:
         §§push(§§pop() * _loc2_);
         if(_loc3_ || _loc3_)
         {
            addr77:
            return §§pop() + 1;
         }
      }
      
      private static function easeInOut(param1:Number) : Number
      {
         return §5v§(easeIn,easeOut,param1);
      }
      
      private static function easeOutIn(param1:Number) : Number
      {
         return §5v§(easeOut,easeIn,param1);
      }
      
      private static function easeInBack(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1.70158);
         if(_loc3_)
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
         if(_loc5_ || §-]§)
         {
            §§push(§§pop() - 1);
            if(_loc5_ || §-]§)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(1.70158);
         if(_loc5_ || _loc3_)
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
         return §5v§(easeInBack,easeOutBack,param1);
      }
      
      private static function easeOutInBack(param1:Number) : Number
      {
         return §5v§(easeOutBack,easeInBack,param1);
      }
      
      private static function easeInElastic(param1:Number) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(_loc6_ || §-]§)
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
                           addr206:
                           while(true)
                           {
                              §§push(param1);
                              addr182:
                              while(true)
                              {
                                 §§push(1);
                                 addr183:
                                 while(!(_loc5_ && _loc2_))
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc5_)
                                    {
                                       continue loop3;
                                    }
                                    if(_loc5_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                                 addr88:
                                 if(_loc6_)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     while(!§§pop())
                     {
                        while(true)
                        {
                           §§push(0.3);
                           addr177:
                           addr199:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr178:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                        }
                     }
                     addr198:
                     return param1;
                  }
               }
            }
         }
         §§goto(addr179);
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
                  if(_loc4_ || param1)
                  {
                     if(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§pop();
                           addr176:
                           while(true)
                           {
                              §§push(param1);
                              addr130:
                              while(true)
                              {
                                 continue loop6;
                              }
                              continue loop6;
                           }
                        }
                        addr175:
                     }
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(0.3);
                              if(!(_loc5_ && §-]§))
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    loop4:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             if(_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(_loc4_)
                                                   {
                                                      §§push(4);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            while(!_loc5_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr130);
                                                            addr88:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            if(!(_loc4_ || §-]§))
                                                            {
                                                               break;
                                                            }
                                                            §§push(Math.pow(2,-10 * param1) * Math.sin((param1 - _loc3_) * (2 * Math.PI) / _loc2_));
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(1);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           continue loop4;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop5;
                                                      }
                                                   }
                                                   §§goto(addr88);
                                                }
                                                addr67:
                                                return §§pop();
                                                addr127:
                                             }
                                             addr151:
                                             §§push(param1);
                                             break loop3;
                                          }
                                          if(!(_loc4_ || param1))
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       §§goto(addr176);
                                    }
                                    addr117:
                                 }
                                 break;
                              }
                              §§goto(addr117);
                           }
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                        §§goto(addr151);
                     }
                  }
                  §§goto(addr175);
               }
            }
         }
         §§goto(addr127);
      }
      
      private static function easeInOutElastic(param1:Number) : Number
      {
         return §5v§(easeInElastic,easeOutElastic,param1);
      }
      
      private static function easeOutInElastic(param1:Number) : Number
      {
         return §5v§(easeOutElastic,easeInElastic,param1);
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
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || §-]§)
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
                              if(!_loc6_)
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(_loc3_);
                                 if(_loc6_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(_loc5_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(param1);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(2.5);
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§push(_loc3_);
                                                if(_loc5_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(§§pop() >= §§pop())
                                                      {
                                                         §§push(param1);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(2.625);
                                                            loop8:
                                                            while(true)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(_loc5_)
                                                                  {
                                                                     if(!(_loc6_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ || _loc2_))
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop() - §§pop());
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr165:
                                                                              loop34:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 addr167:
                                                                                 param1 = §§pop();
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       §§push(_loc2_);
                                                                                       if(_loc5_ || _loc2_)
                                                                                       {
                                                                                          §§push(§§pop() * Math.pow(param1,2));
                                                                                          if(!(_loc5_ || §-]§))
                                                                                          {
                                                                                             addr109:
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   if(!(_loc6_ && param1))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0.75);
                                                                                                                  addr303:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc5_ || param1)
                                                                                                                        {
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              while(_loc6_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              addr316:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr36:
                                                                                                                                 addr202:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       continue loop10;
                                                                                                                                    }
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 §§push(0.9375);
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              addr316:
                                                                                                                              addr319:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(1.5);
                                                                                                                                 addr348:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    addr349:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                       addr350:
                                                                                                                                       loop40:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          addr351:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             continue loop40;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr347:
                                                                                                                           }
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              param1 = §§pop();
                                                                                                                              addr353:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc5_)
                                                                                                                                 {
                                                                                                                                    break loop17;
                                                                                                                                 }
                                                                                                                                 §§push(_loc2_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop31;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc2_);
                                                                                                                              addr362:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * Math.pow(param1,2));
                                                                                                                                 addr367:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr368:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                       break loop19;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr361:
                                                                                                                        }
                                                                                                                        §§goto(addr316);
                                                                                                                     }
                                                                                                                     §§goto(addr350);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                            addr211:
                                                                                                         }
                                                                                                         _loc4_ = §§pop();
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr36);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr36);
                                                                                                      }
                                                                                                      addr126:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc6_ && §-]§))
                                                                                                         {
                                                                                                            addr200:
                                                                                                            §§push(§§pop() * Math.pow(param1,2));
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§goto(addr316);
                                                                                                            }
                                                                                                            §§goto(addr202);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(2.25);
                                                                                                               addr262:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  §§push(_loc3_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     addr266:
                                                                                                                     while(!(_loc6_ && §-]§))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc5_ || §-]§)
                                                                                                                        {
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              addr284:
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              while(_loc5_)
                                                                                                                              {
                                                                                                                                 param1 = §§pop();
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc6_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    §§goto(addr353);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop4;
                                                                                                                              addr284:
                                                                                                                           }
                                                                                                                           §§goto(addr362);
                                                                                                                        }
                                                                                                                        §§goto(addr284);
                                                                                                                     }
                                                                                                                     break loop22;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr261:
                                                                                                         }
                                                                                                         §§goto(addr353);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr348);
                                                                                                }
                                                                                                §§goto(addr200);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc5_ || §-]§)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(_loc5_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr36);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr346:
                                                                                                               }
                                                                                                               §§goto(addr347);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc5_)
                                                                                                                  {
                                                                                                                     §§goto(addr261);
                                                                                                                     §§push(param1);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr258:
                                                                                                            }
                                                                                                            §§goto(addr319);
                                                                                                         }
                                                                                                         §§goto(addr287);
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      addr229:
                                                                                                   }
                                                                                                   §§goto(addr109);
                                                                                                }
                                                                                                addr221:
                                                                                             }
                                                                                             §§goto(addr284);
                                                                                          }
                                                                                       }
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop34;
                                                                                    }
                                                                                    §§goto(addr229);
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    §§goto(addr368);
                                                                                 }
                                                                                 §§push(0.984375);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     §§goto(addr349);
                                                                  }
                                                                  §§goto(addr265);
                                                               }
                                                               §§goto(addr266);
                                                            }
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                }
                                                §§goto(addr265);
                                             }
                                             §§goto(addr303);
                                          }
                                       }
                                    }
                                    §§goto(addr346);
                                 }
                                 §§goto(addr350);
                              }
                              §§goto(addr367);
                           }
                           continue loop1;
                        }
                        §§goto(addr361);
                     }
                  }
               }
            }
         }
         §§goto(addr294);
      }
      
      private static function easeInOutBounce(param1:Number) : Number
      {
         return §5v§(easeInBounce,easeOutBounce,param1);
      }
      
      private static function easeOutInBounce(param1:Number) : Number
      {
         return §5v§(easeOutBounce,easeInBounce,param1);
      }
      
      private static function §5v§(param1:Function, param2:Function, param3:Number) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §-]§))
         {
            §§push(param3);
            if(_loc5_)
            {
               §§push(0.5);
               if(_loc5_ || §-]§)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc5_ || param2)
                     {
                        §§push(0.5);
                        if(!(_loc4_ && param3))
                        {
                           §§push(param1);
                           if(!(_loc4_ && param3))
                           {
                              §§push(global);
                              if(_loc5_)
                              {
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    §§push(2);
                                    if(!(_loc4_ && §-]§))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc5_)
                                       {
                                          addr86:
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_)
                                          {
                                             §§goto(addr90);
                                          }
                                          else
                                          {
                                             §§goto(addr136);
                                          }
                                       }
                                       else
                                       {
                                          addr114:
                                          §§push(§§pop() - 0.5);
                                          if(_loc5_ || param3)
                                          {
                                             addr124:
                                             §§push(§§pop() * 2);
                                          }
                                          §§push(§§pop() * §§pop()(§§pop()));
                                          if(_loc5_ || param1)
                                          {
                                             addr134:
                                             addr136:
                                             return §§pop();
                                             §§push(§§pop() + 0.5);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr86);
                              }
                              else
                              {
                                 addr111:
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    §§goto(addr114);
                                 }
                              }
                              §§goto(addr124);
                           }
                           else
                           {
                              addr110:
                              §§push(global);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr134);
                     }
                     else
                     {
                        addr91:
                        §§push(0.5);
                        if(!(_loc4_ && §-]§))
                        {
                           §§goto(addr110);
                           §§push(param2);
                        }
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr91);
               }
               §§goto(addr134);
            }
            addr90:
            return §§pop();
         }
         §§goto(addr91);
      }
   }
}
