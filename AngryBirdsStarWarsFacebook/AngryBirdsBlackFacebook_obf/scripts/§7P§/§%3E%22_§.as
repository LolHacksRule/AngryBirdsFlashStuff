package §7P§
{
   import §^#>§.§#_§;
   
   public class §>"_§
   {
      
      public static const §?#6§:int = 0;
      
      public static const §%#G§:int = 1;
      
      public static const §#§:int = 2;
      
      public static const §2"0§:int = 3;
      
      public static const §""G§:int = 4;
      
      public static const §4D§:int = 5;
      
      public static const §#!G§:int = 10;
      
      private static var DEFAULT:§>"_§;
      
      private static var §8#X§:§>"_§;
      
      private static var §7">§:§>"_§;
      
      private static var §-"6§:§>"_§;
      
      private static var TNT:§>"_§;
      
      private static var §,"`§:§>"_§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §?#6§ = 0;
            loop0:
            while(true)
            {
               §%#G§ = 1;
               loop1:
               while(true)
               {
                  §#§ = 2;
                  while(true)
                  {
                     §2"0§ = 3;
                     while(_loc2_)
                     {
                        §""G§ = 4;
                        loop9:
                        while(_loc2_ || _loc1_)
                        {
                           §-"6§ = new §>"_§(0,0,8,1500,0,0,§4D§);
                           loop10:
                           while(true)
                           {
                              if(!(_loc1_ && §>"_§))
                              {
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              loop5:
                              while(true)
                              {
                                 §#!G§ = 10;
                                 loop6:
                                 do
                                 {
                                    DEFAULT = new §>"_§(0,0,10,500,7.5,600,§?#6§);
                                    addr158:
                                    while(true)
                                    {
                                       §8#X§ = new §>"_§(0,0,10,500,7.5,600,§%#G§);
                                       do
                                       {
                                          if(!_loc1_)
                                          {
                                             §7">§ = new §>"_§(0,0,15,2000,5,300,§2"0§);
                                             continue loop9;
                                          }
                                          addr173:
                                          while(true)
                                          {
                                             §4D§ = 5;
                                             continue loop5;
                                          }
                                       }
                                       while(_loc1_);
                                       
                                       continue loop6;
                                    }
                                 }
                                 while(!_loc2_);
                                 
                                 return;
                              }
                              addr60:
                              while(true)
                              {
                                 if(!(_loc1_ && §>"_§))
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop9;
                                 }
                                 continue loop10;
                              }
                              §§goto(addr158);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr173);
      }
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §>!p§:Number;
      
      private var §-#[§:Number;
      
      private var §;"F§:Number;
      
      private var §75§:Number;
      
      private var §;"-§:int;
      
      private var §6K§:int = -1;
      
      public function §>"_§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:int = -1)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(!_loc10_)
         {
            super();
            loop0:
            while(true)
            {
               this.§8!+§ = param1;
               while(true)
               {
                  this.§=!Z§ = param2;
                  loop2:
                  while(!(_loc10_ && this))
                  {
                     this.§>!p§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§-#[§ = param4;
                        while(true)
                        {
                           this.§;"F§ = param5;
                           loop5:
                           while(_loc9_ || param2)
                           {
                              while(true)
                              {
                                 this.§75§ = param6;
                                 while(_loc9_)
                                 {
                                    if(!_loc10_)
                                    {
                                       this.§;"-§ = param7;
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public static function §[1§(param1:int, param2:Number, param3:Number) : §>"_§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§>"_§ = null;
         §§push(param1);
         if(!_loc6_)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || §>"_§)
            {
               §§push(§%#G§);
               if(_loc7_ || §>"_§)
               {
                  §§push(_loc5_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr102:
                              §§push(_loc5_);
                              if(_loc7_ || param1)
                              {
                                 addr110:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && param3))
                                    {
                                       addr118:
                                       §§push(2);
                                       if(_loc7_)
                                       {
                                          addr136:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc4_ = §8#X§;
                                                break;
                                             case 1:
                                                _loc4_ = TNT;
                                                break;
                                             case 2:
                                                _loc4_ = §7">§;
                                                break;
                                             case 3:
                                                _loc4_ = §,"`§;
                                                break;
                                             default:
                                                _loc4_ = DEFAULT;
                                          }
                                          return new §>"_§(param2,param3,_loc4_.§&D§,_loc4_.push,_loc4_.§6"-§,_loc4_.damage,param1);
                                          addr135:
                                          addr121:
                                       }
                                       else
                                       {
                                          addr125:
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr135);
                                    }
                                    addr127:
                                    §§push(3);
                                    if(_loc7_)
                                    {
                                       addr130:
                                    }
                                    §§goto(addr135);
                                 }
                                 else
                                 {
                                    §§push(§""G§);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr125);
                                    }
                                    §§goto(addr130);
                                 }
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr127);
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           §§goto(addr135);
                        }
                        §§goto(addr118);
                     }
                     else
                     {
                        §§push(§#§);
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              addr92:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    §§push(1);
                                    if(!_loc7_)
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr118);
                                 }
                                 §§goto(addr135);
                              }
                              else
                              {
                                 §§push(§2"0§);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr102);
                                 }
                                 §§goto(addr130);
                              }
                           }
                           §§goto(addr110);
                        }
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr92);
               }
               §§goto(addr130);
            }
            §§goto(addr127);
         }
         §§goto(addr136);
      }
      
      public static function §2W§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : §>"_§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(§>"_§);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         if(_loc7_ || param2)
         {
            §§push(§#_§.§8]§);
            if(_loc7_ || param1)
            {
               addr58:
               §§push(§§pop() * §§pop());
               §§push(param5);
            }
            return new §§pop()(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param6,§#!G§);
         }
         §§goto(addr58);
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function get §&D§() : Number
      {
         return this.§>!p§;
      }
      
      public function get push() : Number
      {
         return this.§-#[§;
      }
      
      public function get §6"-§() : Number
      {
         return this.§;"F§;
      }
      
      public function get damage() : Number
      {
         return this.§75§;
      }
      
      public function get type() : int
      {
         return this.§;"-§;
      }
      
      public function get § #E§() : int
      {
         return this.§6K§;
      }
   }
}
