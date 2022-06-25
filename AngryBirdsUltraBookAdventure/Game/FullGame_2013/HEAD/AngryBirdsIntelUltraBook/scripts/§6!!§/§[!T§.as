package §6!!§
{
   public class §[!T§
   {
      
      public static const §8!#§:int = 0;
      
      public static const §;a§:int = 1;
      
      public static const §9j§:int = 2;
      
      public static const §4G§:int = 3;
      
      public static const §7!c§:int = 4;
      
      private static var DEFAULT:§[!T§;
      
      private static var §-!K§:§[!T§;
      
      private static var §6e§:§[!T§;
      
      private static var §6!h§:§[!T§;
      
      private static var §9d§:§[!T§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!#§ = 0;
            loop0:
            while(true)
            {
               §;a§ = 1;
               loop1:
               while(true)
               {
                  §9j§ = 2;
                  while(true)
                  {
                     §4G§ = 3;
                     addr165:
                     while(true)
                     {
                        §7!c§ = 4;
                        continue loop0;
                     }
                     addr65:
                     if(_loc1_ || _loc2_)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr103);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §1!G§:Number;
      
      private var §<f§:Number;
      
      private var §!!"§:Number;
      
      private var §!f§:Number;
      
      private var §?!%§:int;
      
      public function §[!T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
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
                  loop2:
                  while(true)
                  {
                     this.§1!G§ = param3;
                     continue loop0;
                     addr63:
                     if(!(_loc8_ && param2))
                     {
                        this.§!f§ = param6;
                        while(true)
                        {
                           if(!(_loc8_ && param3))
                           {
                              if(!_loc9_)
                              {
                                 break;
                              }
                              continue;
                           }
                           loop6:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 §§goto(addr63);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§!!"§ = param5;
                                    continue loop6;
                                 }
                                 addr85:
                              }
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§<f§ = param4;
            §§goto(addr85);
         }
         §§goto(addr32);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §[!T§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§[!T§ = null;
         §§push(param1);
         if(_loc7_)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || param3)
            {
               §§push(§;a§);
               if(_loc7_ || param3)
               {
                  §§push(_loc5_);
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_ || param1)
                        {
                           §§push(0);
                           if(_loc6_ && param3)
                           {
                              addr135:
                              §§push(_loc5_);
                              if(!(_loc6_ && param3))
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc6_ && param2))
                                    {
                                       addr151:
                                       §§push(2);
                                       if(_loc7_ || §[!T§)
                                       {
                                          addr159:
                                       }
                                    }
                                    else
                                    {
                                       addr194:
                                       §§push(4);
                                       if(_loc7_ || param3)
                                       {
                                          addr202:
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(§7!c§);
                                    if(!(_loc6_ && §[!T§))
                                    {
                                       addr170:
                                       if(§§pop() === _loc5_)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr173:
                                             §§push(3);
                                             if(!(_loc6_ && §[!T§))
                                             {
                                                addr205:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      _loc4_ = §-!K§;
                                                      break;
                                                   case 1:
                                                      _loc4_ = §6!h§;
                                                      break;
                                                   case 2:
                                                      _loc4_ = §6e§;
                                                      break;
                                                   case 3:
                                                      _loc4_ = §9d§;
                                                      break;
                                                   default:
                                                      _loc4_ = DEFAULT;
                                                }
                                                return new §[!T§(param2,param3,_loc4_.pushRadius,_loc4_.push,_loc4_.damageRadius,_loc4_.damage,param1);
                                                addr204:
                                             }
                                          }
                                       }
                                       else if(true)
                                       {
                                          §§goto(addr204);
                                          §§push(4);
                                       }
                                       §§goto(addr204);
                                    }
                                 }
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr204);
                        }
                        §§goto(addr173);
                     }
                     else
                     {
                        §§push(§9j§);
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(1);
                                    if(_loc6_ && §[!T§)
                                    {
                                       §§goto(addr159);
                                    }
                                    else
                                    {
                                       addr130:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr151);
                                 }
                              }
                              else
                              {
                                 §§push(§4G§);
                                 if(_loc7_)
                                 {
                                    §§goto(addr135);
                                 }
                              }
                              §§goto(addr204);
                           }
                           §§goto(addr170);
                        }
                     }
                     §§goto(addr202);
                  }
                  §§goto(addr170);
               }
               §§goto(addr130);
            }
            §§goto(addr173);
         }
         §§goto(addr205);
      }
      
      public function get pushRadius() : Number
      {
         return this.§1!G§;
      }
      
      public function get push() : Number
      {
         return this.§<f§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§!!"§;
      }
      
      public function get damage() : Number
      {
         return this.§!f§;
      }
      
      public function get type() : int
      {
         return this.§?!%§;
      }
   }
}
