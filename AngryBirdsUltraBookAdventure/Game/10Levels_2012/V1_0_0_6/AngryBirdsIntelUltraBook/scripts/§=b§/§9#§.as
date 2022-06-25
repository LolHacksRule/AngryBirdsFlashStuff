package §=b§
{
   public class §9#§
   {
      
      public static const §;S§:int = 0;
      
      public static const §@!2§:int = 1;
      
      public static const §?!d§:int = 2;
      
      public static const §,!>§:int = 3;
      
      public static const §!Y§:int = 4;
      
      private static var §1W§:§9#§;
      
      private static var §9m§:§9#§;
      
      private static var §`$§:§9#§;
      
      private static var §3!$§:§9#§;
      
      private static var §@!r§:§9#§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §;S§ = 0;
            loop0:
            while(true)
            {
               §@!2§ = 1;
               loop1:
               while(true)
               {
                  §?!d§ = 2;
                  loop2:
                  while(true)
                  {
                     §,!>§ = 3;
                     loop3:
                     while(true)
                     {
                        §!Y§ = 4;
                        loop4:
                        while(true)
                        {
                           §1W§ = new §9#§(0,0,10,500,7.5,600,§;S§);
                           while(true)
                           {
                              §9m§ = new §9#§(0,0,10,500,7.5,600,§@!2§);
                              while(_loc1_ || _loc1_)
                              {
                                 if(!_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §`$§ = new §9#§(0,0,15,1750,5,300,§,!>§);
                                 loop7:
                                 while(true)
                                 {
                                    §3!$§ = new §9#§(0,0,10,1500,5,150,§?!d§);
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop7;
                                    }
                                    continue loop1;
                                 }
                                 if(_loc1_ || _loc2_)
                                 {
                                    return;
                                    addr44:
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §1!e§:Number;
      
      private var §6V§:Number;
      
      private var §4!4§:Number;
      
      private var §8!,§:Number;
      
      private var §4g§:int;
      
      public function §9#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param1)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.x = param1;
            addr112:
            while(true)
            {
               this.y = param2;
               do
               {
                  this.§1!e§ = param3;
                  while(true)
                  {
                     this.§6V§ = param4;
                     continue loop0;
                  }
               }
               while(!(_loc9_ || param1));
               
               return;
            }
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §9#§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§9#§ = null;
         §§push(param1);
         if(!(_loc7_ && param3))
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§@!2§);
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(_loc6_ || §9#§)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || param2)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr149:
                              if(§§pop() === _loc5_)
                              {
                                 addr161:
                                 §§push(3);
                                 if(!(_loc7_ && param1))
                                 {
                                    addr169:
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                        }
                        else
                        {
                           addr132:
                           §§push(2);
                           if(_loc6_ || param2)
                           {
                              addr140:
                           }
                        }
                        addr175:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_ = §9m§;
                              break;
                           case 1:
                              _loc4_ = §3!$§;
                              break;
                           case 2:
                              _loc4_ = §`$§;
                              break;
                           case 3:
                              _loc4_ = §@!r§;
                              break;
                           default:
                              _loc4_ = §1W§;
                        }
                        return new §9#§(param2,param3,_loc4_.§1!H§,_loc4_.push,_loc4_.§,7§,_loc4_.damage,param1);
                        addr174:
                     }
                     else
                     {
                        §§push(§?!d§);
                        if(_loc6_ || param2)
                        {
                           addr98:
                           §§push(_loc5_);
                           if(_loc6_ || param2)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(1);
                                    if(_loc7_)
                                    {
                                       §§goto(addr140);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr161);
                                 }
                                 §§goto(addr174);
                              }
                              else
                              {
                                 §§push(§,!>§);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc7_)
                                    {
                                       addr129:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             §§goto(addr132);
                                          }
                                          else
                                          {
                                             §§goto(addr161);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§!Y§);
                                          if(!(_loc7_ && param1))
                                          {
                                             §§goto(addr149);
                                          }
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr149);
                                 }
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr129);
               }
               §§goto(addr98);
            }
            §§goto(addr161);
         }
         §§goto(addr175);
      }
      
      public function get §1!H§() : Number
      {
         return this.§1!e§;
      }
      
      public function get push() : Number
      {
         return this.§6V§;
      }
      
      public function get §,7§() : Number
      {
         return this.§4!4§;
      }
      
      public function get damage() : Number
      {
         return this.§8!,§;
      }
      
      public function get type() : int
      {
         return this.§4g§;
      }
   }
}
