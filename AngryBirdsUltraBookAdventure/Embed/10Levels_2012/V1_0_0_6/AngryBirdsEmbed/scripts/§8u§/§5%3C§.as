package §8u§
{
   public class §5<§
   {
      
      public static const §"!,§:int = 0;
      
      public static const §7[§:int = 1;
      
      public static const §&!'§:int = 2;
      
      public static const §#n§:int = 3;
      
      public static const §0S§:int = 4;
      
      private static var §=b§:§5<§;
      
      private static var §5!4§:§5<§;
      
      private static var §&!4§:§5<§ = new §5<§(0,0,15,1750,5,300,§#n§);
      
      private static var §2k§:§5<§ = new §5<§(0,0,10,1500,5,150,§&!'§);
      
      private static var §%s§:§5<§ = new §5<§(0,0,5,10,7,275,§0S§);
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §"!,§ = 0;
            §7[§ = 1;
            §&!'§ = 2;
            if(!(_loc1_ && _loc2_))
            {
               §#n§ = 3;
            }
            §0S§ = 4;
            §=b§ = new §5<§(0,0,10,500,7.5,600,§"!,§);
            §5!4§ = new §5<§(0,0,10,500,7.5,600,§7[§);
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §!L§:Number;
      
      private var §,,§:Number;
      
      private var §?!"§:Number;
      
      private var §5!"§:Number;
      
      private var §[!+§:int;
      
      public function §5<§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         super();
         this.x = param1;
         if(_loc8_)
         {
            this.y = param2;
            if(!_loc9_)
            {
               this.§!L§ = param3;
               if(_loc9_)
               {
               }
               §§goto(addr63);
            }
            this.§,,§ = param4;
            if(_loc8_ || param3)
            {
               §§goto(addr63);
            }
            §§goto(addr73);
         }
         addr63:
         this.§?!"§ = param5;
         if(_loc8_)
         {
            this.§5!"§ = param6;
            if(_loc8_)
            {
               addr73:
               this.§[!+§ = param7;
            }
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5<§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§5<§ = null;
         §§push(param1);
         if(_loc7_)
         {
            var _loc5_:* = §§pop();
            if(_loc7_ || param2)
            {
               §§push(§7[§);
               if(_loc7_)
               {
                  §§push(_loc5_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_ || param3)
                        {
                           §§push(0);
                           if(!_loc6_)
                           {
                              addr150:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = §5!4§;
                                    break;
                                 case 1:
                                    _loc4_ = §2k§;
                                    break;
                                 case 2:
                                    _loc4_ = §&!4§;
                                    break;
                                 case 3:
                                    _loc4_ = §%s§;
                                    break;
                                 default:
                                    _loc4_ = §=b§;
                              }
                              return new §5<§(param2,param3,_loc4_.§`T§,_loc4_.push,_loc4_.§#!9§,_loc4_.damage,param1);
                              addr149:
                           }
                           §§goto(addr149);
                        }
                        else
                        {
                           addr98:
                           §§push(1);
                        }
                     }
                     else
                     {
                        §§push(§&!'§);
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           if(§§pop() === §§pop())
                           {
                              if(!(_loc6_ && §5<§))
                              {
                                 §§goto(addr98);
                              }
                              else
                              {
                                 addr119:
                                 §§push(2);
                                 if(!_loc7_)
                                 {
                                    addr144:
                                 }
                                 §§goto(addr149);
                              }
                           }
                           else
                           {
                              §§push(§#n§);
                              if(!(_loc6_ && param2))
                              {
                                 §§push(_loc5_);
                                 if(_loc7_)
                                 {
                                    addr111:
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc7_ || param3)
                                       {
                                          §§goto(addr119);
                                       }
                                       else
                                       {
                                          addr143:
                                          §§goto(addr144);
                                          §§push(3);
                                       }
                                       §§goto(addr144);
                                    }
                                    else
                                    {
                                       §§push(§0S§);
                                       if(!(_loc6_ && param2))
                                       {
                                          §§push(_loc5_);
                                       }
                                       §§goto(addr149);
                                    }
                                 }
                              }
                              §§goto(addr149);
                           }
                           §§goto(addr149);
                        }
                        if(§§pop() === §§pop())
                        {
                           §§goto(addr143);
                        }
                        else
                        {
                           §§push(4);
                        }
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr111);
               }
               §§goto(addr144);
            }
            §§goto(addr98);
         }
         §§goto(addr150);
      }
      
      public function get §`T§() : Number
      {
         return this.§!L§;
      }
      
      public function get push() : Number
      {
         return this.§,,§;
      }
      
      public function get §#!9§() : Number
      {
         return this.§?!"§;
      }
      
      public function get damage() : Number
      {
         return this.§5!"§;
      }
      
      public function get type() : int
      {
         return this.§[!+§;
      }
   }
}
