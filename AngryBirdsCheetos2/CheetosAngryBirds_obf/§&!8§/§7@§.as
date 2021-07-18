package §&!8§
{
   public class §7@§
   {
      
      public static const §]K§:int = 0;
      
      public static const §6U§:int = 1;
      
      public static const §`!a§:int = 2;
      
      public static const §8!Z§:int = 3;
      
      public static const §!![§:int = 4;
      
      public static const §^S§:int = 5;
      
      private static var §0t§:§7@§;
      
      private static var §%4§:§7@§;
      
      private static var §#b§:§7@§;
      
      private static var §6k§:§7@§;
      
      private static var TNT:§7@§;
      
      private static var §>!I§:§7@§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §]K§ = 0;
            while(true)
            {
               §6U§ = 1;
               loop1:
               while(_loc2_ || §7@§)
               {
                  §`!a§ = 2;
                  loop2:
                  while(true)
                  {
                     §8!Z§ = 3;
                     loop3:
                     while(true)
                     {
                        §!![§ = 4;
                        addr171:
                        loop4:
                        while(true)
                        {
                           §^S§ = 5;
                           loop5:
                           for(; !_loc1_; if(_loc2_ || _loc2_)
                           {
                              if(_loc2_)
                              {
                                 TNT = new §7@§(0,0,10,1500,5,150,§`!a§);
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr139);
                                    addr79:
                                    §>!I§ = new §7@§(0,0,5,10,7,275,§!![§);
                                    if(!_loc2_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr43);
                                 }
                                 continue loop4;
                              }
                              continue loop1;
                           })
                           {
                              §0t§ = new §7@§(0,0,10,500,7.5,600,§]K§);
                              while(true)
                              {
                                 §%4§ = new §7@§(0,0,10,500,7.5,600,§6U§);
                                 addr139:
                                 while(_loc2_ || §7@§)
                                 {
                                    §#b§ = new §7@§(0,0,15,1750,5,300,§8!Z§);
                                    loop8:
                                    while(true)
                                    {
                                       §6k§ = new §7@§(0,0,8,1500,0,0,§^S§);
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop8;
                                          addr43:
                                          if(!(_loc1_ && §7@§))
                                          {
                                             return;
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           continue loop3;
                           if(_loc2_ || _loc2_)
                           {
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §>W§:Number;
      
      private var §?O§:Number;
      
      private var §<!i§:Number;
      
      private var §&!]§:Number;
      
      private var § !H§:int;
      
      private var §#0§:Vector.<§[g§>;
      
      public function §7@§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§[g§> = null)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!(_loc10_ && param2))
         {
            super();
            while(true)
            {
               this.x = param1;
               while(!(_loc10_ && this))
               {
                  this.y = param2;
                  loop2:
                  for(; _loc9_ || param2; while(_loc9_ || param3)
                  {
                     this.§&!]§ = param6;
                     §§goto(addr46);
                  })
                  {
                     this.§>W§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§?O§ = param4;
                        while(true)
                        {
                           this.§<!i§ = param5;
                           continue loop2;
                           addr48:
                           if(!(_loc9_ || param3))
                           {
                              continue;
                           }
                           if(_loc10_)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              this.§ !H§ = param7;
                              while(_loc9_)
                              {
                                 this.§#0§ = param8;
                                 if(!_loc10_)
                                 {
                                    return;
                                 }
                              }
                              addr46:
                              while(_loc9_)
                              {
                                 §§goto(addr48);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§[g§> = null) : §7@§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§7@§ = null;
         §§push(param1);
         if(!_loc7_)
         {
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               §§push(§6U§);
               if(!_loc7_)
               {
                  §§push(_loc6_);
                  if(_loc8_ || §7@§)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc7_)
                        {
                           §§push(0);
                           if(!_loc7_)
                           {
                              addr169:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = §%4§;
                                    break;
                                 case 1:
                                    _loc5_ = TNT;
                                    break;
                                 case 2:
                                    _loc5_ = §#b§;
                                    break;
                                 case 3:
                                    _loc5_ = §6k§;
                                    break;
                                 case 4:
                                    _loc5_ = §>!I§;
                                    break;
                                 default:
                                    _loc5_ = §0t§;
                              }
                              return new §7@§(param2,param3,_loc5_.§0!2§,_loc5_.push,_loc5_.§%e§,_loc5_.damage,param1,param4);
                              addr168:
                           }
                           else
                           {
                              addr79:
                              §§push(_loc6_);
                              if(_loc8_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc7_ && param2))
                                    {
                                       addr100:
                                       §§push(1);
                                       if(_loc7_ && §7@§)
                                       {
                                          addr126:
                                       }
                                    }
                                    else
                                    {
                                       addr141:
                                       §§push(3);
                                       if(_loc8_ || param2)
                                       {
                                          addr149:
                                       }
                                    }
                                    §§goto(addr168);
                                 }
                                 else
                                 {
                                    §§push(§8!Z§);
                                    if(!_loc7_)
                                    {
                                       §§push(_loc6_);
                                       if(_loc8_ || param3)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                addr123:
                                                §§push(2);
                                                if(_loc8_)
                                                {
                                                   §§goto(addr126);
                                                }
                                                §§goto(addr168);
                                             }
                                             else
                                             {
                                                §§goto(addr141);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§^S§);
                                             if(_loc8_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc8_ || param2)
                                                {
                                                   addr138:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         §§goto(addr141);
                                                      }
                                                      addr160:
                                                      §§push(4);
                                                      if(_loc8_)
                                                      {
                                                         addr163:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§!![§);
                                                      if(_loc8_ || param3)
                                                      {
                                                      }
                                                   }
                                                   §§goto(addr168);
                                                }
                                                addr159:
                                                if(§§pop() === §§pop())
                                                {
                                                   §§goto(addr160);
                                                }
                                                else
                                                {
                                                   §§goto(addr168);
                                                   §§push(5);
                                                }
                                             }
                                             §§goto(addr168);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr138);
                                    }
                                 }
                                 §§goto(addr159);
                                 §§push(_loc6_);
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr123);
                     }
                     else
                     {
                        §§push(§`!a§);
                        if(_loc8_)
                        {
                           §§goto(addr79);
                        }
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr159);
               }
               §§goto(addr168);
            }
            §§goto(addr100);
         }
         §§goto(addr169);
      }
      
      public function get §0!2§() : Number
      {
         return this.§>W§;
      }
      
      public function get push() : Number
      {
         return this.§?O§;
      }
      
      public function get §%e§() : Number
      {
         return this.§<!i§;
      }
      
      public function get damage() : Number
      {
         return this.§&!]§;
      }
      
      public function get type() : int
      {
         return this.§ !H§;
      }
      
      public function get §-%§() : Vector.<§[g§>
      {
         return this.§#0§;
      }
   }
}
