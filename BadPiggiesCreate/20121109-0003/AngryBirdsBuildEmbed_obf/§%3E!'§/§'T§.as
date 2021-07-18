package §>!'§
{
   public class §'T§
   {
      
      public static const §0v§:int = 0;
      
      public static const §8&§:int = 1;
      
      public static const §]!A§:int = 2;
      
      public static const §'&§:int = 3;
      
      public static const §!!R§:int = 4;
      
      private static var §2x§:§'T§;
      
      private static var §&!"§:§'T§;
      
      private static var §]P§:§'T§;
      
      private static var §,!E§:§'T§;
      
      private static var §?!;§:§'T§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §0v§ = 0;
            §8&§ = 1;
            §]!A§ = 2;
            if(_loc2_)
            {
               §'&§ = 3;
               §!!R§ = 4;
               §2x§ = new §'T§(0,0,10,500,7.5,600,§0v§);
               if(_loc2_)
               {
                  addr59:
                  §&!"§ = new §'T§(0,0,10,500,7.5,600,§8&§);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr115);
               }
               §]P§ = new §'T§(0,0,15,1750,5,300,§'&§);
               §,!E§ = new §'T§(0,0,10,1500,5,150,§]!A§);
               §?!;§ = new §'T§(0,0,5,10,7,275,§!!R§);
               addr115:
               return;
            }
         }
         §§goto(addr59);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §+!?§:Number;
      
      private var §"N§:Number;
      
      private var §08§:Number;
      
      private var §"u§:Number;
      
      private var §&"§:int;
      
      public function §'T§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super();
            this.x = param1;
         }
         this.y = param2;
         if(_loc8_ || param3)
         {
            this.§+!?§ = param3;
            if(!_loc9_)
            {
               this.§"N§ = param4;
            }
            this.§08§ = param5;
            this.§"u§ = param6;
            this.§&"§ = param7;
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §'T§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§'T§ = null;
         §§push(param1);
         if(_loc6_ || param2)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§8&§);
               if(_loc6_)
               {
                  §§push(_loc5_);
                  if(_loc6_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        §§push(!_loc7_ ? 0 : 3);
                     }
                     else
                     {
                        §§push(§]!A§);
                        if(!(_loc7_ && param3))
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(1);
                                    if(!(_loc7_ && param3))
                                    {
                                       addr147:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc4_ = §&!"§;
                                             break;
                                          case 1:
                                             _loc4_ = §,!E§;
                                             break;
                                          case 2:
                                             _loc4_ = §]P§;
                                             break;
                                          case 3:
                                             _loc4_ = §?!;§;
                                             break;
                                          default:
                                             _loc4_ = §2x§;
                                       }
                                       return new §'T§(param2,param3,_loc4_.§>!d§,_loc4_.push,_loc4_.§while§,_loc4_.damage,param1);
                                       addr146:
                                    }
                                    else
                                    {
                                       addr107:
                                       §§push(_loc5_);
                                       if(!(_loc7_ && §'T§))
                                       {
                                          addr115:
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr140);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§!!R§);
                                             if(!(_loc7_ && §'T§))
                                             {
                                                addr139:
                                                if(§§pop() === _loc5_)
                                                {
                                                   §§goto(addr140);
                                                }
                                                else
                                                {
                                                   §§goto(addr146);
                                                   §§push(4);
                                                }
                                             }
                                          }
                                          §§goto(addr146);
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr146);
                                 }
                                 addr119:
                                 §§goto(addr146);
                                 §§push(2);
                              }
                              else
                              {
                                 §§push(§'&§);
                              }
                              §§goto(addr107);
                           }
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr139);
               }
               §§goto(addr119);
            }
            §§goto(addr81);
         }
         §§goto(addr147);
      }
      
      public function get §>!d§() : Number
      {
         return this.§+!?§;
      }
      
      public function get push() : Number
      {
         return this.§"N§;
      }
      
      public function get §while§() : Number
      {
         return this.§08§;
      }
      
      public function get damage() : Number
      {
         return this.§"u§;
      }
      
      public function get type() : int
      {
         return this.§&"§;
      }
   }
}
