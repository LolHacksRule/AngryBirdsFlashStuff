package §%Q§
{
   public class §=N§
   {
      
      public static const §[!6§:int = 0;
      
      public static const §;!P§:int = 1;
      
      public static const §;!I§:int = 2;
      
      public static const § w§:int = 3;
      
      public static const §+!6§:int = 4;
      
      private static var §'4§:§=N§;
      
      private static var §!?§:§=N§;
      
      private static var §6D§:§=N§;
      
      private static var §0!9§:§=N§;
      
      private static var §<!w§:§=N§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §[!6§ = 0;
            while(true)
            {
               §;!P§ = 1;
               loop1:
               while(true)
               {
                  §;!I§ = 2;
                  addr171:
                  while(true)
                  {
                     § w§ = 3;
                     continue loop1;
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            §'4§ = new §=N§(0,0,10,500,7.5,600,§[!6§);
            loop5:
            while(true)
            {
               §!?§ = new §=N§(0,0,10,500,7.5,600,§;!P§);
               while(true)
               {
                  §6D§ = new §=N§(0,0,15,1750,5,300,§ w§);
                  continue loop4;
                  addr50:
                  if(!(_loc1_ && _loc2_))
                  {
                     continue loop5;
                  }
               }
            }
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §0!a§:Number;
      
      private var §#!i§:Number;
      
      private var §>!p§:Number;
      
      private var §2!O§:Number;
      
      private var §,s§:int;
      
      public function §=N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param1))
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
                     this.§0!a§ = param3;
                     addr102:
                     while(true)
                     {
                        this.§#!i§ = param4;
                        continue loop0;
                     }
                     addr56:
                     if(_loc9_ || this)
                     {
                        this.§,s§ = param7;
                        addr63:
                        if(_loc8_)
                        {
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 continue loop1;
                              }
                              if(!_loc9_)
                              {
                                 break;
                              }
                              §§goto(addr56);
                              §§goto(addr63);
                           }
                           §§goto(addr102);
                           addr52:
                        }
                        if(!_loc8_)
                        {
                           return;
                           addr37:
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§>!p§ = param5;
            §§goto(addr68);
         }
         §§goto(addr37);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §=N§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§=N§ = null;
         §§push(param1);
         if(!(_loc7_ && §=N§))
         {
            var _loc5_:* = §§pop();
            if(_loc6_)
            {
               §§push(§;!P§);
               if(_loc6_ || param3)
               {
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && param1))
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                           }
                        }
                        else
                        {
                           addr161:
                           §§push(3);
                           if(_loc6_ || param2)
                           {
                              addr169:
                           }
                        }
                     }
                     else
                     {
                        §§push(§;!I§);
                        if(_loc6_ || param1)
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§push(1);
                                    if(!(_loc7_ && §=N§))
                                    {
                                       addr175:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc4_ = §!?§;
                                             break;
                                          case 1:
                                             _loc4_ = §0!9§;
                                             break;
                                          case 2:
                                             _loc4_ = §6D§;
                                             break;
                                          case 3:
                                             _loc4_ = §<!w§;
                                             break;
                                          default:
                                             _loc4_ = §'4§;
                                       }
                                       return new §=N§(param2,param3,_loc4_.§@!§,_loc4_.push,_loc4_.§8!K§,_loc4_.damage,param1);
                                       addr174:
                                       addr112:
                                    }
                                    else
                                    {
                                       §§goto(addr169);
                                    }
                                 }
                                 else
                                 {
                                    addr132:
                                    §§push(2);
                                    if(_loc6_ || param2)
                                    {
                                    }
                                 }
                                 §§goto(addr174);
                              }
                              else
                              {
                                 §§push(§ w§);
                                 if(_loc6_ || param1)
                                 {
                                    §§push(_loc5_);
                                    if(_loc6_)
                                    {
                                       addr124:
                                       if(§§pop() === §§pop())
                                       {
                                          if(!(_loc7_ && param3))
                                          {
                                             §§goto(addr132);
                                          }
                                          §§goto(addr161);
                                       }
                                       else
                                       {
                                          §§push(§+!6§);
                                          if(!(_loc7_ && param1))
                                          {
                                             addr149:
                                             §§push(_loc5_);
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                    if(§§pop() === §§pop())
                                    {
                                       §§goto(addr161);
                                    }
                                    else
                                    {
                                       §§goto(addr174);
                                       §§push(4);
                                    }
                                    §§goto(addr174);
                                 }
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr174);
                  }
                  §§goto(addr124);
               }
               §§goto(addr174);
            }
            §§goto(addr161);
         }
         §§goto(addr175);
      }
      
      public function get §@!§() : Number
      {
         return this.§0!a§;
      }
      
      public function get push() : Number
      {
         return this.§#!i§;
      }
      
      public function get §8!K§() : Number
      {
         return this.§>!p§;
      }
      
      public function get damage() : Number
      {
         return this.§2!O§;
      }
      
      public function get type() : int
      {
         return this.§,s§;
      }
   }
}
