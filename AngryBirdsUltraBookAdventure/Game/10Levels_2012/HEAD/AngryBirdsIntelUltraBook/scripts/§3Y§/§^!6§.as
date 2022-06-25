package §3Y§
{
   public class §^!6§
   {
      
      public static const §[U§:int = 0;
      
      public static const §3!U§:int = 1;
      
      public static const §9!Y§:int = 2;
      
      public static const §7#§:int = 3;
      
      public static const §1n§:int = 4;
      
      private static var DEFAULT:§^!6§;
      
      private static var §^X§:§^!6§;
      
      private static var §=!K§:§^!6§;
      
      private static var §5j§:§^!6§;
      
      private static var §8h§:§^!6§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[U§ = 0;
            loop0:
            while(true)
            {
               §3!U§ = 1;
               while(true)
               {
                  §9!Y§ = 2;
                  addr181:
                  while(true)
                  {
                     §7#§ = 3;
                     while(true)
                     {
                        §1n§ = 4;
                        addr63:
                        if(_loc2_ || _loc2_)
                        {
                           return;
                           addr70:
                        }
                     }
                  }
                  loop7:
                  for(; _loc2_ || _loc1_; if(_loc1_ && _loc1_)
                  {
                     continue;
                  },§§goto(addr56))
                  {
                     §5j§ = new §^!6§(0,0,10,1500,5,150,§9!Y§);
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        loop5:
                        while(true)
                        {
                           §^X§ = new §^!6§(0,0,10,500,7.5,600,§3!U§);
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 §=!K§ = new §^!6§(0,0,15,1750,5,300,§7#§);
                                 continue loop7;
                              }
                              addr171:
                              while(true)
                              {
                                 DEFAULT = new §^!6§(0,0,10,500,7.5,600,§[U§);
                                 continue loop5;
                              }
                              §§goto(addr70);
                              addr56:
                              if(!(_loc1_ && _loc2_))
                              {
                                 break loop5;
                              }
                           }
                        }
                        §§goto(addr63);
                        addr105:
                        §8h§ = new §^!6§(0,0,5,10,7,275,§1n§);
                        if(_loc2_ || §^!6§)
                        {
                           continue loop7;
                        }
                     }
                     §§goto(addr181);
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §=!#§:Number;
      
      private var §;!k§:Number;
      
      private var §"0§:Number;
      
      private var §]!#§:Number;
      
      private var §9!Q§:int;
      
      public function §^!6§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || this)
         {
            super();
            while(true)
            {
               this.x = param1;
               loop1:
               while(true)
               {
                  this.y = param2;
                  addr112:
                  while(true)
                  {
                     this.§=!#§ = param3;
                     continue loop1;
                  }
               }
               loop4:
               while(!(_loc8_ && param2))
               {
                  while(true)
                  {
                     this.§"0§ = param5;
                     loop6:
                     while(_loc9_)
                     {
                        this.§]!#§ = param6;
                        while(true)
                        {
                           if(!(_loc8_ && param1))
                           {
                              if(!_loc9_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop6;
                        }
                        continue loop4;
                     }
                     §§goto(addr112);
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §^!6§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§^!6§ = null;
         §§push(param1);
         if(!(_loc7_ && §^!6§))
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || param3)
            {
               §§push(§3!U§);
               if(!(_loc7_ && param2))
               {
                  §§push(_loc5_);
                  if(_loc6_ || param2)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(!_loc7_)
                           {
                              addr194:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc4_ = §^X§;
                                    break;
                                 case 1:
                                    _loc4_ = §5j§;
                                    break;
                                 case 2:
                                    _loc4_ = §=!K§;
                                    break;
                                 case 3:
                                    _loc4_ = §8h§;
                                    break;
                                 default:
                                    _loc4_ = DEFAULT;
                              }
                              return new §^!6§(param2,param3,_loc4_.pushRadius,_loc4_.push,_loc4_.damageRadius,_loc4_.damage,param1);
                              addr193:
                           }
                           else
                           {
                              addr180:
                              §§goto(addr193);
                           }
                        }
                        else
                        {
                           addr111:
                           §§push(1);
                           if(_loc7_)
                           {
                           }
                        }
                        §§goto(addr193);
                     }
                     else
                     {
                        §§push(§9!Y§);
                        if(!_loc7_)
                        {
                           §§push(_loc5_);
                           if(_loc6_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr111);
                                 }
                                 else
                                 {
                                    addr162:
                                    §§push(3);
                                    if(_loc6_ || §^!6§)
                                    {
                                       §§goto(addr180);
                                    }
                                    §§goto(addr193);
                                 }
                              }
                              else
                              {
                                 §§push(§7#§);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(_loc5_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || §^!6§)
                                          {
                                             §§push(2);
                                             if(_loc6_ || §^!6§)
                                             {
                                             }
                                             §§goto(addr193);
                                          }
                                          else
                                          {
                                             §§goto(addr162);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§1n§);
                                          if(!(_loc7_ && param3))
                                          {
                                             addr154:
                                             if(§§pop() === _loc5_)
                                             {
                                                if(!(_loc7_ && param2))
                                                {
                                                   §§goto(addr162);
                                                }
                                             }
                                             else if(true)
                                             {
                                                §§goto(addr193);
                                                §§push(4);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr193);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr154);
                                 }
                              }
                              §§goto(addr193);
                           }
                           §§goto(addr154);
                        }
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr154);
               }
               §§goto(addr193);
            }
            §§goto(addr162);
         }
         §§goto(addr194);
      }
      
      public function get pushRadius() : Number
      {
         return this.§=!#§;
      }
      
      public function get push() : Number
      {
         return this.§;!k§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§"0§;
      }
      
      public function get damage() : Number
      {
         return this.§]!#§;
      }
      
      public function get type() : int
      {
         return this.§9!Q§;
      }
   }
}
