package §_-CR§
{
   public class §_-GP§
   {
      
      public static const §_-rI§:int = 0;
      
      public static const §_-Us§:int = 1;
      
      public static const §_-iT§:int = 2;
      
      public static const §_-Zb§:int = 3;
      
      public static const §_-oD§:int = 4;
      
      private static var §_-zP§:§_-GP§;
      
      private static var §_-NB§:§_-GP§;
      
      private static var §_-8K§:§_-GP§;
      
      private static var TNT:§_-GP§ = new §_-GP§(0,0,10,1500,5,150,§_-iT§);
      
      private static var §_-ew§:§_-GP§ = new §_-GP§(0,0,5,10,8,400,§_-oD§);
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-Us§ = 1;
            if(!_loc1_)
            {
               §_-iT§ = 2;
               if(!_loc1_)
               {
                  §_-Zb§ = 3;
                  addr37:
                  §_-oD§ = 4;
                  if(!(_loc1_ && _loc2_))
                  {
                     §_-zP§ = new §_-GP§(0,0,10,500,7.5,600,§_-rI§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §_-NB§ = new §_-GP§(0,0,10,500,7.5,600,§_-Us§);
                        if(_loc2_ || §_-GP§)
                        {
                        }
                        §§goto(addr101);
                     }
                  }
                  §_-8K§ = new §_-GP§(0,0,15,1750,5,300,§_-Zb§);
               }
               §§goto(addr101);
            }
            §§goto(addr37);
         }
         addr101:
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-oC§:Number;
      
      private var §_-v3§:Number;
      
      private var §_-vB§:Number;
      
      private var §_-Vo§:Number;
      
      private var §_-gA§:int;
      
      public function §_-GP§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         super();
         if(_loc8_)
         {
            this.x = param1;
            this.y = param2;
            this.§_-oC§ = param3;
            if(_loc8_ || param3)
            {
               this.§_-v3§ = param4;
               this.§_-vB§ = param5;
               if(!(_loc9_ && param3))
               {
                  addr60:
                  this.§_-Vo§ = param6;
                  this.§_-gA§ = param7;
               }
            }
            return;
         }
         §§goto(addr60);
      }
      
      public static function §_-ti§(param1:int, param2:Number, param3:Number) : §_-GP§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§_-GP§ = null;
         §§push(param1);
         if(_loc7_)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || §_-GP§)
            {
               §§push(§_-Us§);
               §§push(_loc5_);
               if(_loc7_ || param1)
               {
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr125);
                  }
                  else
                  {
                     §§push(§_-iT§);
                     §§push(_loc5_);
                     if(_loc7_ || param1)
                     {
                        addr85:
                        if(§§pop() === §§pop())
                        {
                           §§push(!(_loc6_ && §_-GP§) ? 1 : 2);
                        }
                        else
                        {
                           §§push(§_-Zb§);
                           §§push(_loc5_);
                           if(!_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§goto(addr107);
                                 }
                                 else
                                 {
                                    §§goto(addr119);
                                 }
                              }
                              else
                              {
                                 §§push(§_-oD§);
                                 if(_loc7_ || param2)
                                 {
                                    addr118:
                                    if(§§pop() === _loc5_)
                                    {
                                       §§goto(addr119);
                                    }
                                    else
                                    {
                                       addr125:
                                       addr126:
                                       switch(!!_loc7_ ? 0 : 3)
                                       {
                                          case 0:
                                             _loc4_ = §_-NB§;
                                             break;
                                          case 1:
                                             _loc4_ = TNT;
                                             break;
                                          case 2:
                                             _loc4_ = §_-8K§;
                                             break;
                                          case 3:
                                             _loc4_ = §_-ew§;
                                             break;
                                          default:
                                             _loc4_ = §_-zP§;
                                       }
                                       return new §_-GP§(param2,param3,_loc4_.§_-ij§,_loc4_.push,_loc4_.§_-UQ§,_loc4_.damage,param1);
                                       §§push(4);
                                    }
                                    §§goto(addr125);
                                 }
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr93);
         }
         §§goto(addr126);
      }
      
      public function get §_-ij§() : Number
      {
         return this.§_-oC§;
      }
      
      public function get push() : Number
      {
         return this.§_-v3§;
      }
      
      public function get §_-UQ§() : Number
      {
         return this.§_-vB§;
      }
      
      public function get damage() : Number
      {
         return this.§_-Vo§;
      }
      
      public function get type() : int
      {
         return this.§_-gA§;
      }
   }
}
