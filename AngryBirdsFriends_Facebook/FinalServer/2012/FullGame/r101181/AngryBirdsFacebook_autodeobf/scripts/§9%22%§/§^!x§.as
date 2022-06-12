package §9"%§
{
   public class §^!x§
   {
      
      public static const §1!n§:int = 0;
      
      public static const §7"A§:int = 1;
      
      public static const §`y§:int = 2;
      
      public static const §;!§:int = 3;
      
      public static const §8!"§:int = 4;
      
      public static const §`§:int = 5;
      
      private static var §-"9§:§^!x§;
      
      private static var §!"3§:§^!x§;
      
      private static var §2!@§:§^!x§;
      
      private static var §6k§:§^!x§;
      
      private static var §#"!§:§^!x§;
      
      private static var §[;§:§^!x§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1!n§ = 0;
            loop0:
            while(true)
            {
               §7"A§ = 1;
               while(true)
               {
                  §`y§ = 2;
                  while(_loc2_ || _loc1_)
                  {
                     if(!_loc1_)
                     {
                        §;!§ = 3;
                        while(!(_loc1_ && §^!x§))
                        {
                           §8!"§ = 4;
                           loop4:
                           for(; _loc2_; while(!(_loc1_ && §^!x§))
                           {
                              §!"3§ = new §^!x§(0,0,10,500,7.5,600,§7"A§);
                              §§goto(addr123);
                           })
                           {
                              §`§ = 5;
                              while(true)
                              {
                                 §-"9§ = new §^!x§(0,0,10,500,7.5,600,§1!n§);
                                 continue loop4;
                                 addr123:
                                 loop7:
                                 for(; !(_loc1_ && §^!x§); if(_loc2_ || _loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       return;
                                       addr54:
                                    }
                                    continue loop4;
                                 })
                                 {
                                    §2!@§ = new §^!x§(0,0,15,1750,5,300,§;!§);
                                    while(true)
                                    {
                                       §6k§ = new §^!x§(0,0,8,1500,0,0,§`§);
                                       while(!(_loc1_ && _loc2_))
                                       {
                                          §#"!§ = new §^!x§(0,0,10,1500,5,150,§`y§);
                                          do
                                          {
                                             §[;§ = new §^!x§(0,0,5,10,7,275,§8!"§);
                                          }
                                          while(_loc1_ && _loc1_);
                                          
                                          if(_loc2_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §@!n§:Number;
      
      private var §#H§:Number;
      
      private var §<!§:Number;
      
      private var §6!2§:Number;
      
      private var §%8§:int;
      
      private var §5=§:Vector.<§&!r§>;
      
      public function §^!x§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§&!r§> = null)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.x = param1;
               while(true)
               {
                  this.y = param2;
                  loop2:
                  for(; _loc10_ || this; if(_loc10_ || param2)
                  {
                     return;
                  })
                  {
                     if(_loc9_)
                     {
                        continue loop0;
                     }
                     this.§@!n§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§#H§ = param4;
                        loop4:
                        while(true)
                        {
                           this.§<!§ = param5;
                           while(true)
                           {
                              this.§6!2§ = param6;
                              loop6:
                              while(!_loc9_)
                              {
                                 if(_loc10_)
                                 {
                                    this.§%8§ = param7;
                                    while(_loc10_)
                                    {
                                       this.§5=§ = param8;
                                       if(_loc10_)
                                       {
                                          if(!(_loc9_ && param2))
                                          {
                                             continue loop2;
                                          }
                                          continue loop6;
                                          continue loop6;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§&!r§> = null) : §^!x§
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:§^!x§ = null;
         §§push(param1);
         if(_loc8_)
         {
            var _loc6_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§7"A§);
               if(_loc8_ || param3)
               {
                  §§push(_loc6_);
                  if(_loc8_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc8_)
                        {
                           §§push(0);
                           if(_loc7_ && param3)
                           {
                              addr183:
                           }
                        }
                        else
                        {
                           addr165:
                           §§push(4);
                           if(!(_loc7_ && §^!x§))
                           {
                              §§goto(addr183);
                           }
                        }
                        addr189:
                        switch(§§pop())
                        {
                           case 0:
                              _loc5_ = §!"3§;
                              break;
                           case 1:
                              _loc5_ = §#"!§;
                              break;
                           case 2:
                              _loc5_ = §2!@§;
                              break;
                           case 3:
                              _loc5_ = §6k§;
                              break;
                           case 4:
                              _loc5_ = §[;§;
                              break;
                           default:
                              _loc5_ = §-"9§;
                        }
                        return new §^!x§(param2,param3,_loc5_.§2!q§,_loc5_.push,_loc5_.§[!F§,_loc5_.damage,param1,param4);
                        addr188:
                     }
                     else
                     {
                        §§push(§`y§);
                        if(!_loc7_)
                        {
                           §§push(_loc6_);
                           if(_loc8_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    addr105:
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                       addr154:
                                    }
                                 }
                                 else
                                 {
                                    addr123:
                                    §§push(2);
                                    if(_loc7_)
                                    {
                                       §§goto(addr183);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(§;!§);
                                 if(_loc8_)
                                 {
                                    §§push(_loc6_);
                                    if(_loc8_ || param3)
                                    {
                                       addr120:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§goto(addr123);
                                          }
                                          else
                                          {
                                             addr146:
                                             §§push(3);
                                             if(_loc8_ || param3)
                                             {
                                                §§goto(addr154);
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§push(§`§);
                                          if(_loc8_ || param3)
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc7_ && param1))
                                             {
                                                if(§§pop() === §§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr146);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr165);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§8!"§);
                                                   if(_loc8_ || param2)
                                                   {
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr183);
                                             }
                                             addr164:
                                             if(§§pop() === §§pop())
                                             {
                                                §§goto(addr165);
                                             }
                                             else
                                             {
                                                §§goto(addr188);
                                                §§push(5);
                                             }
                                             §§goto(addr188);
                                          }
                                          §§goto(addr164);
                                          §§push(_loc6_);
                                       }
                                    }
                                    §§goto(addr164);
                                 }
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr120);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr183);
                  }
                  §§goto(addr164);
               }
               §§goto(addr183);
            }
            §§goto(addr105);
         }
         §§goto(addr189);
      }
      
      public function get §2!q§() : Number
      {
         return this.§@!n§;
      }
      
      public function get push() : Number
      {
         return this.§#H§;
      }
      
      public function get §[!F§() : Number
      {
         return this.§<!§;
      }
      
      public function get damage() : Number
      {
         return this.§6!2§;
      }
      
      public function get type() : int
      {
         return this.§%8§;
      }
      
      public function get §<"F§() : Vector.<§&!r§>
      {
         return this.§5=§;
      }
   }
}
