package §_-hU§
{
   import §_-2J§.§_-QM§;
   import §_-9§.§_-JR§;
   import §_-HU§.§_-yP§;
   import §_-OJ§.§_-tL§;
   import §_-Qx§.§_-Wv§;
   import §_-W3§.§_-qz§;
   import §_-e3§.§_-qU§;
   import §_-gY§.§_-Vu§;
   import flash.geom.Rectangle;
   
   public class §_-MB§
   {
      
      public static var §_-1q§:int = 0;
      
      public static var §_-SP§:int = 0;
      
      public static var §_-A7§:§_-tL§;
      
      public static var §_-Dg§:§_-qU§;
      
      public static var §_-49§:Boolean = false;
      
      public static var §_-bT§:§_-MB§ = null;
      
      public static var §_-gw§:§_-JR§;
      
      public static var §_-ty§:Boolean = true;
      
      public static var §_-D1§:Number = 1;
      
      public static var §_-Rs§:Number = 1.0;
      
      public static var §_-y3§:Number = 1.0;
      
      private static var §_-wO§:§_-qz§ = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-1q§ = 0;
            if(!(_loc1_ && _loc2_))
            {
               §_-SP§ = 0;
               if(!(_loc1_ && §_-MB§))
               {
                  §§goto(addr43);
               }
               §§goto(addr67);
            }
            addr43:
            §_-49§ = false;
            §§goto(addr46);
         }
         addr46:
         if(!_loc1_)
         {
            §_-Rs§ = 1;
            addr67:
            §_-y3§ = 1;
         }
      }
      
      public function §_-MB§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function init(param1:§_-JR§, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §_-gw§ = param1;
            if(!(_loc4_ && param3))
            {
               §_-1q§ = param2;
               if(_loc5_)
               {
                  §_-SP§ = param3;
                  if(_loc5_ || §_-MB§)
                  {
                     addr60:
                     §_-Dg§ = new §_-qU§(true,param1.canvas);
                  }
                  return;
               }
            }
         }
         §§goto(addr60);
      }
      
      public static function §_-Zd§(param1:Class, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §_-yP§.§_-Zd§(param1,param2);
         }
      }
      
      public static function §_-Et§(param1:§_-QM§, param2:Array, param3:Function = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §_-A7§.§_-Et§(param1,param2,param3);
         }
      }
      
      public static function §_-JA§(param1:§_-Wv§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §_-A7§.init(param1);
         }
      }
      
      public static function §_-U0§(param1:§_-qz§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §_-MB§)
         {
            §_-wO§ = param1;
            if(!(_loc2_ && _loc3_))
            {
               §_-A7§.§_-U0§(param1);
            }
         }
      }
      
      public static function get §_-Gk§() : §_-qz§
      {
         return §_-wO§;
      }
      
      public static function §_-o3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §_-ty§ = param1;
            if(_loc2_)
            {
               addr32:
               §_-A7§.background.§_-o3§(param1);
            }
            return;
         }
         §§goto(addr32);
      }
      
      public static function §_-G8§() : Boolean
      {
         return §_-ty§;
      }
      
      public static function §_-ze§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            §§push(param4);
            if(_loc5_)
            {
               §§push(32);
               if(!_loc6_)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(32);
                     if(_loc5_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc5_)
                        {
                           param4 = §§pop();
                           if(!(_loc6_ && §_-MB§))
                           {
                              addr41:
                              §§push(param3);
                              if(!_loc6_)
                              {
                                 addr45:
                                 if(§§pop() < 32)
                                 {
                                    if(_loc5_)
                                    {
                                       addr57:
                                       param3 = 32;
                                       addr58:
                                       §_-Vu§.§_-dq§.§_-cU§ = new Rectangle(param1,param2,param3,param4);
                                       §_-D1§ = Math.min(param3 / §_-1q§,param4 / §_-SP§);
                                       §§push(§§findproperty(§_-Rs§));
                                       §§push(param3);
                                       if(_loc5_ || §_-MB§)
                                       {
                                          §§push(§§pop() / §_-1q§);
                                       }
                                       §§pop().§_-Rs§ = §§pop();
                                       §§push(§§findproperty(§_-y3§));
                                       §§push(param4);
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(§§pop() / §_-SP§);
                                       }
                                       §§pop().§_-y3§ = §§pop();
                                       if(_loc6_)
                                       {
                                       }
                                       addr114:
                                       return;
                                       addr48:
                                       addr49:
                                    }
                                    §_-A7§.§_-ha§(param3,param4);
                                    §§goto(addr114);
                                 }
                                 §§goto(addr58);
                              }
                              §§goto(addr57);
                           }
                           §§goto(addr48);
                        }
                        §§goto(addr57);
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr45);
         }
         §§goto(addr57);
      }
   }
}
