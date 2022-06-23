package §^!A§
{
   public class §[!N§
   {
      
      public static const §,W§:int = 0;
      
      public static const §1!9§:int = 1;
      
      public static const §%-§:int = 2;
      
      public static const §]!7§:int = 3;
      
      public static const §3P§:int = 4;
      
      public static const §%Q§:int = 5;
      
      private static var §3S§:§[!N§;
      
      private static var § !C§:§[!N§;
      
      private static var §%,§:§[!N§;
      
      private static var §[!?§:§[!N§;
      
      private static var §1!0§:§[!N§;
      
      private static var §=§:§[!N§ = new §[!N§(0,0,5,10,7,275,§3P§);
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §%-§ = 2;
            §]!7§ = 3;
            §3P§ = 4;
            if(_loc2_)
            {
               §%Q§ = 5;
               §3S§ = new §[!N§(0,0,10,500,7.5,600,§,W§);
               if(_loc2_ || _loc1_)
               {
                  § !C§ = new §[!N§(0,0,10,500,7.5,600,§1!9§);
                  if(_loc2_)
                  {
                     addr85:
                     §%,§ = new §[!N§(0,0,15,1750,5,300,§]!7§);
                  }
                  §[!?§ = new §[!N§(0,0,8,1500,0,0,§%Q§);
                  if(!(_loc1_ && _loc1_))
                  {
                     §1!0§ = new §[!N§(0,0,10,1500,5,150,§%-§);
                  }
                  §§goto(addr135);
               }
               §§goto(addr85);
            }
            §§goto(addr135);
         }
         addr135:
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §4!4§:Number;
      
      private var §&%§:Number;
      
      private var §%!"§:Number;
      
      private var §0!M§:Number;
      
      private var §<"§:int;
      
      private var §9;§:Vector.<§;!%§>;
      
      public function §[!N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0, param8:Vector.<§;!%§> = null)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         super();
         if(!(_loc9_ && param1))
         {
            this.x = param1;
            if(!_loc9_)
            {
               this.y = param2;
               this.§4!4§ = param3;
               if(_loc10_ || param2)
               {
                  this.§&%§ = param4;
                  this.§%!"§ = param5;
                  this.§0!M§ = param6;
                  if(_loc10_ || param3)
                  {
                     this.§<"§ = param7;
                     if(_loc9_)
                     {
                     }
                     §§goto(addr88);
                  }
               }
               this.§9;§ = param8;
            }
         }
         addr88:
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number, param4:Vector.<§;!%§> = null) : §[!N§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:§[!N§ = null;
         §§push(param1);
         if(_loc7_ || §[!N§)
         {
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               §§push(§1!9§);
               if(!_loc8_)
               {
                  §§push(_loc6_);
                  if(_loc7_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_ || §[!N§)
                        {
                           §§push(0);
                           if(_loc7_ || param2)
                           {
                           }
                        }
                        else
                        {
                           addr159:
                           §§push(4);
                           if(!(_loc8_ && param3))
                           {
                              addr167:
                           }
                        }
                     }
                     else
                     {
                        §§push(§%-§);
                        §§push(_loc6_);
                        if(_loc7_ || param2)
                        {
                           addr104:
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc8_ && param1))
                              {
                                 §§goto(addr172);
                              }
                              else
                              {
                                 addr144:
                                 addr172:
                                 addr173:
                                 switch(1)
                                 {
                                    case 0:
                                       _loc5_ = § !C§;
                                       break;
                                    case 1:
                                       _loc5_ = §1!0§;
                                       break;
                                    case 2:
                                       _loc5_ = §%,§;
                                       break;
                                    case 3:
                                       _loc5_ = §[!?§;
                                       break;
                                    case 4:
                                       _loc5_ = §=§;
                                       break;
                                    default:
                                       _loc5_ = §3S§;
                                 }
                                 return new §[!N§(param2,param3,_loc5_.§!i§,_loc5_.push,_loc5_.§[!I§,_loc5_.damage,param1,param4);
                                 §§push(3);
                              }
                              §§goto(addr172);
                           }
                           else
                           {
                              §§push(§]!7§);
                              if(_loc7_ || param1)
                              {
                                 §§push(_loc6_);
                                 if(_loc7_)
                                 {
                                    addr125:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          addr129:
                                          §§goto(addr172);
                                          §§push(2);
                                       }
                                       else
                                       {
                                          §§goto(addr144);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§%Q§);
                                       if(_loc7_)
                                       {
                                          §§push(_loc6_);
                                          if(!_loc8_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                if(!(_loc8_ && param2))
                                                {
                                                   §§goto(addr144);
                                                }
                                                else
                                                {
                                                   §§goto(addr159);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§3P§);
                                                §§push(_loc6_);
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr159);
                                 }
                                 else
                                 {
                                    §§goto(addr172);
                                    §§push(5);
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr129);
                           }
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr104);
               }
               §§goto(addr167);
            }
            §§goto(addr144);
         }
         §§goto(addr173);
      }
      
      public function get §!i§() : Number
      {
         return this.§4!4§;
      }
      
      public function get push() : Number
      {
         return this.§&%§;
      }
      
      public function get §[!I§() : Number
      {
         return this.§%!"§;
      }
      
      public function get damage() : Number
      {
         return this.§0!M§;
      }
      
      public function get type() : int
      {
         return this.§<"§;
      }
      
      public function get §8!L§() : Vector.<§;!%§>
      {
         return this.§9;§;
      }
   }
}
