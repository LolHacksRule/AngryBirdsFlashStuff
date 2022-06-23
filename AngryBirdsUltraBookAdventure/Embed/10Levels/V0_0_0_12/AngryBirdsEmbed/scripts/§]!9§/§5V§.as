package §]!9§
{
   public class §5V§
   {
      
      public static const §]b§:int = 0;
      
      public static const §^!4§:int = 1;
      
      public static const §?7§:int = 2;
      
      public static const §<m§:int = 3;
      
      public static const §3I§:int = 4;
      
      private static var §?`§:§5V§;
      
      private static var §9j§:§5V§;
      
      private static var §<Z§:§5V§;
      
      private static var §[!#§:§5V§;
      
      private static var §!Z§:§5V§ = new §5V§(0,0,5,10,7,275,§3I§);
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!4§ = 1;
            if(_loc2_)
            {
               §?7§ = 2;
            }
            §<m§ = 3;
            §3I§ = 4;
            if(!(_loc1_ && _loc2_))
            {
               §?`§ = new §5V§(0,0,10,500,7.5,600,§]b§);
            }
            §9j§ = new §5V§(0,0,10,500,7.5,600,§^!4§);
            if(!(_loc1_ && _loc1_))
            {
               §<Z§ = new §5V§(0,0,15,1750,5,300,§<m§);
               if(_loc2_ || _loc1_)
               {
                  §[!#§ = new §5V§(0,0,10,1500,5,150,§?7§);
               }
            }
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §2!A§:Number;
      
      private var §;H§:Number;
      
      private var §3_§:Number;
      
      private var §4w§:Number;
      
      private var §,!5§:int;
      
      public function §5V§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         super();
         this.x = param1;
         this.y = param2;
         if(!_loc8_)
         {
            this.§2!A§ = param3;
            if(_loc9_)
            {
               addr42:
               this.§;H§ = param4;
               this.§3_§ = param5;
               if(!_loc8_)
               {
                  this.§4w§ = param6;
               }
            }
            this.§,!5§ = param7;
            return;
         }
         §§goto(addr42);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §5V§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§5V§ = null;
         §§push(param1);
         if(!_loc7_)
         {
            var _loc5_:* = §§pop();
            if(!_loc7_)
            {
               §§push(§^!4§);
               if(!_loc7_)
               {
                  §§push(_loc5_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc7_ && §5V§))
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              addr163:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = §9j§;
                                    break;
                                 case 1:
                                    _loc4_ = §[!#§;
                                    break;
                                 case 2:
                                    _loc4_ = §<Z§;
                                    break;
                                 case 3:
                                    _loc4_ = §!Z§;
                                    break;
                                 default:
                                    _loc4_ = §?`§;
                              }
                              return new §5V§(param2,param3,_loc4_.§+r§,_loc4_.push,_loc4_.§+@§,_loc4_.damage,param1);
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
                                    §§push(§3I§);
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
                        §§push(§?7§);
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
                                 §§push(§<m§);
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
      
      public function get §+r§() : Number
      {
         return this.§2!A§;
      }
      
      public function get push() : Number
      {
         return this.§;H§;
      }
      
      public function get §+@§() : Number
      {
         return this.§3_§;
      }
      
      public function get damage() : Number
      {
         return this.§4w§;
      }
      
      public function get type() : int
      {
         return this.§,!5§;
      }
   }
}
