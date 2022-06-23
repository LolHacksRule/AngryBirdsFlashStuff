package §!+§
{
   public class §%!=§
   {
      
      public static const §5#§:int = 0;
      
      public static const §`z§:int = 1;
      
      public static const §-q§:int = 2;
      
      public static const §!!$§:int = 3;
      
      public static const §>!'§:int = 4;
      
      private static var §&0§:§%!=§;
      
      private static var §&6§:§%!=§;
      
      private static var §3!@§:§%!=§;
      
      private static var §?<§:§%!=§;
      
      private static var §^T§:§%!=§ = new §%!=§(0,0,5,10,7,275,§>!'§);
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`z§ = 1;
            if(_loc2_)
            {
               §-q§ = 2;
            }
            §!!$§ = 3;
            §>!'§ = 4;
            if(!(_loc1_ && _loc2_))
            {
               §&0§ = new §%!=§(0,0,10,500,7.5,600,§5#§);
            }
            §&6§ = new §%!=§(0,0,10,500,7.5,600,§`z§);
            if(!(_loc1_ && _loc1_))
            {
               §3!@§ = new §%!=§(0,0,15,1750,5,300,§!!$§);
               if(_loc2_ || _loc1_)
               {
                  §?<§ = new §%!=§(0,0,10,1500,5,150,§-q§);
               }
            }
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §0!-§:Number;
      
      private var §[P§:Number;
      
      private var §#!!§:Number;
      
      private var §9!G§:Number;
      
      private var §1i§:int;
      
      public function §%!=§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         super();
         this.x = param1;
         this.y = param2;
         if(!_loc8_)
         {
            this.§0!-§ = param3;
            if(_loc9_)
            {
               addr42:
               this.§[P§ = param4;
               this.§#!!§ = param5;
               if(!_loc8_)
               {
                  this.§9!G§ = param6;
               }
            }
            this.§1i§ = param7;
            return;
         }
         §§goto(addr42);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §%!=§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§%!=§ = null;
         §§push(param1);
         if(!_loc7_)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§`z§);
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && §%!=§))
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr163:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = §&6§;
                                    break;
                                 case 1:
                                    _loc4_ = §?<§;
                                    break;
                                 case 2:
                                    _loc4_ = §3!@§;
                                    break;
                                 case 3:
                                    _loc4_ = §^T§;
                                    break;
                                 default:
                                    _loc4_ = §&0§;
                              }
                              return new §%!=§(param2,param3,_loc4_.§?>§,_loc4_.push,_loc4_.§'b§,_loc4_.damage,param1);
                              addr162:
                           }
                           else
                           {
                              addr116:
                              §§push(_loc5_);
                              if(!(_loc7_ && param2))
                              {
                                 addr124:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       addr132:
                                       §§goto(addr162);
                                       §§push(2);
                                    }
                                    else
                                    {
                                       addr149:
                                       §§push(3);
                                       if(_loc6_ || param2)
                                       {
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§>!'§);
                                    if(!_loc7_)
                                    {
                                       §§push(_loc5_);
                                    }
                                 }
                                 §§goto(addr162);
                              }
                              if(§§pop() !== §§pop())
                              {
                                 §§goto(addr162);
                                 §§push(4);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr162);
                        }
                        §§goto(addr149);
                     }
                     else
                     {
                        §§push(§-q§);
                        if(!_loc7_)
                        {
                           §§push(_loc5_);
                           if(!(_loc7_ && param2))
                           {
                              addr91:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_ || param2)
                                 {
                                    §§push(1);
                                    if(_loc6_ || param3)
                                    {
                                       addr107:
                                    }
                                    §§goto(addr162);
                                 }
                                 else
                                 {
                                    §§goto(addr132);
                                 }
                              }
                              else
                              {
                                 §§push(§!!$§);
                                 if(_loc6_ || param3)
                                 {
                                    §§goto(addr116);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr162);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr107);
                     }
                  }
                  §§goto(addr91);
               }
               §§goto(addr107);
            }
            §§goto(addr132);
         }
         §§goto(addr163);
      }
      
      public function get §?>§() : Number
      {
         return this.§0!-§;
      }
      
      public function get push() : Number
      {
         return this.§[P§;
      }
      
      public function get §'b§() : Number
      {
         return this.§#!!§;
      }
      
      public function get damage() : Number
      {
         return this.§9!G§;
      }
      
      public function get type() : int
      {
         return this.§1i§;
      }
   }
}
