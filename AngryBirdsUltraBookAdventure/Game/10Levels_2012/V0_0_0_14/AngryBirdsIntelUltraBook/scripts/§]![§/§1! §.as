package §]![§
{
   public class §1! §
   {
      
      public static const §?!i§:int = 0;
      
      public static const §8!8§:int = 1;
      
      public static const §3!$§:int = 2;
      
      public static const §2!w§:int = 3;
      
      public static const §0I§:int = 4;
      
      private static var §?l§:§1! §;
      
      private static var §%!P§:§1! §;
      
      private static var §else §:§1! §;
      
      private static var §'o§:§1! §;
      
      private static var §&!W§:§1! §;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?!i§ = 0;
            loop0:
            while(true)
            {
               §8!8§ = 1;
               loop1:
               while(true)
               {
                  §3!$§ = 2;
                  loop2:
                  while(true)
                  {
                     §2!w§ = 3;
                     loop3:
                     while(true)
                     {
                        §0I§ = 4;
                        while(true)
                        {
                           §?l§ = new §1! §(0,0,10,500,7.5,600,§?!i§);
                           loop5:
                           for(; !(_loc1_ && §1! §); if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           },§§goto(addr70))
                           {
                              if(_loc1_)
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §%!P§ = new §1! §(0,0,10,500,7.5,600,§8!8§);
                                 loop7:
                                 while(!_loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       §else § = new §1! §(0,0,15,1750,5,300,§2!w§);
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             if(_loc1_)
                                             {
                                                break;
                                             }
                                             §'o§ = new §1! §(0,0,10,1500,5,150,§3!$§);
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop5;
                                                }
                                                continue loop8;
                                                addr70:
                                                §&!W§ = new §1! §(0,0,5,10,7,275,§0I§);
                                                if(_loc2_ || §1! §)
                                                {
                                                   return;
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop7;
                                       }
                                       continue loop3;
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §'!@§:Number;
      
      private var §-!N§:Number;
      
      private var §#!w§:Number;
      
      private var §>!k§:Number;
      
      private var §2§:int;
      
      public function §1! §(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && this))
         {
            super();
            loop0:
            while(true)
            {
               this.x = param1;
               loop1:
               while(true)
               {
                  this.y = param2;
                  while(true)
                  {
                     this.§'!@§ = param3;
                     continue loop0;
                     loop6:
                     while(_loc9_ || param1)
                     {
                        this.§>!k§ = param6;
                        while(true)
                        {
                           if(_loc9_)
                           {
                              addr71:
                              if(!(_loc9_ || param1))
                              {
                                 break;
                              }
                              continue;
                           }
                           addr105:
                           while(true)
                           {
                              this.§#!w§ = param5;
                              if(!(_loc8_ && this))
                              {
                                 continue loop1;
                              }
                              continue loop6;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§-!N§ = param4;
            §§goto(addr105);
         }
         §§goto(addr64);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §1! §
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§1! § = null;
         §§push(param1);
         if(_loc7_ || param3)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || param3)
            {
               §§push(§8!8§);
               if(!(_loc6_ && param2))
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_)
                        {
                           §§push(0);
                           if(_loc6_ && §1! §)
                           {
                              addr160:
                              if(§§pop() === _loc5_)
                              {
                                 addr162:
                                 §§push(3);
                                 if(_loc7_)
                                 {
                                    addr165:
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           else
                           {
                              addr95:
                           }
                        }
                        else
                        {
                           addr110:
                           §§push(1);
                           if(!_loc7_)
                           {
                           }
                        }
                        addr171:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = §%!P§;
                              break;
                           case 1:
                              _loc4_ = §'o§;
                              break;
                           case 2:
                              _loc4_ = §else §;
                              break;
                           case 3:
                              _loc4_ = §&!W§;
                              break;
                           default:
                              _loc4_ = §?l§;
                        }
                        return new §1! §(param2,param3,_loc4_.§]!E§,_loc4_.push,_loc4_.§`!>§,_loc4_.damage,param1);
                        addr170:
                     }
                     else
                     {
                        §§push(§3!$§);
                        if(!_loc6_)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || §1! §)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§goto(addr110);
                                 }
                                 else
                                 {
                                    addr133:
                                    §§push(2);
                                    if(_loc6_ && param1)
                                    {
                                       §§goto(addr160);
                                    }
                                 }
                                 §§goto(addr170);
                              }
                              else
                              {
                                 §§push(§2!w§);
                                 if(_loc7_ || param3)
                                 {
                                    §§push(_loc5_);
                                    if(_loc7_ || param3)
                                    {
                                       addr130:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr133);
                                          }
                                          §§goto(addr162);
                                       }
                                       else
                                       {
                                          §§push(§0I§);
                                          if(!(_loc6_ && param3))
                                          {
                                             §§goto(addr160);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 §§goto(addr165);
                              }
                           }
                           §§goto(addr160);
                        }
                     }
                     §§goto(addr165);
                  }
                  §§goto(addr130);
               }
               §§goto(addr95);
            }
            §§goto(addr110);
         }
         §§goto(addr171);
      }
      
      public function get §]!E§() : Number
      {
         return this.§'!@§;
      }
      
      public function get push() : Number
      {
         return this.§-!N§;
      }
      
      public function get §`!>§() : Number
      {
         return this.§#!w§;
      }
      
      public function get damage() : Number
      {
         return this.§>!k§;
      }
      
      public function get type() : int
      {
         return this.§2§;
      }
   }
}
