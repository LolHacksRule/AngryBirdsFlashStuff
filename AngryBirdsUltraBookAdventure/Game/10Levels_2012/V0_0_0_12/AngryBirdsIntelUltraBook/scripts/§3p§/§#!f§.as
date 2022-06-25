package §3p§
{
   public class §#!f§
   {
      
      public static const §?6§:int = 0;
      
      public static const §!q§:int = 1;
      
      public static const §#y§:int = 2;
      
      public static const §[!>§:int = 3;
      
      public static const §<v§:int = 4;
      
      private static var DEFAULT:§#!f§;
      
      private static var §'!A§:§#!f§;
      
      private static var §7!§:§#!f§;
      
      private static var §;!I§:§#!f§;
      
      private static var §%!h§:§#!f§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?6§ = 0;
            loop0:
            while(true)
            {
               §!q§ = 1;
               while(true)
               {
                  §#y§ = 2;
                  addr181:
                  while(true)
                  {
                     §[!>§ = 3;
                     while(true)
                     {
                        §<v§ = 4;
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
                     §;!I§ = new §#!f§(0,0,10,1500,5,150,§#y§);
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
                           §'!A§ = new §#!f§(0,0,10,500,7.5,600,§!q§);
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 §7!§ = new §#!f§(0,0,15,1750,5,300,§[!>§);
                                 continue loop7;
                              }
                              addr171:
                              while(true)
                              {
                                 DEFAULT = new §#!f§(0,0,10,500,7.5,600,§?6§);
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
                        §%!h§ = new §#!f§(0,0,5,10,7,275,§<v§);
                        if(_loc2_ || §#!f§)
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
      
      private var §'!+§:Number;
      
      private var §^!8§:Number;
      
      private var §8f§:Number;
      
      private var §&!#§:Number;
      
      private var §00§:int;
      
      public function §#!f§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
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
                     this.§'!+§ = param3;
                     continue loop1;
                  }
               }
               loop4:
               while(!(_loc8_ && param2))
               {
                  while(true)
                  {
                     this.§8f§ = param5;
                     loop6:
                     while(_loc9_)
                     {
                        this.§&!#§ = param6;
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
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §#!f§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:§#!f§ = null;
         §§push(param1);
         if(!(_loc7_ && §#!f§))
         {
            var _loc5_:* = §§pop();
            if(_loc6_ || param3)
            {
               §§push(§!q§);
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
                                    _loc4_ = §'!A§;
                                    break;
                                 case 1:
                                    _loc4_ = §;!I§;
                                    break;
                                 case 2:
                                    _loc4_ = §7!§;
                                    break;
                                 case 3:
                                    _loc4_ = §%!h§;
                                    break;
                                 default:
                                    _loc4_ = DEFAULT;
                              }
                              return new §#!f§(param2,param3,_loc4_.pushRadius,_loc4_.push,_loc4_.damageRadius,_loc4_.damage,param1);
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
                        §§push(§#y§);
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
                                    if(_loc6_ || §#!f§)
                                    {
                                       §§goto(addr180);
                                    }
                                    §§goto(addr193);
                                 }
                              }
                              else
                              {
                                 §§push(§[!>§);
                                 if(_loc6_ || param2)
                                 {
                                    §§push(_loc5_);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || §#!f§)
                                          {
                                             §§push(2);
                                             if(_loc6_ || §#!f§)
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
                                          §§push(§<v§);
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
         return this.§'!+§;
      }
      
      public function get push() : Number
      {
         return this.§^!8§;
      }
      
      public function get damageRadius() : Number
      {
         return this.§8f§;
      }
      
      public function get damage() : Number
      {
         return this.§&!#§;
      }
      
      public function get type() : int
      {
         return this.§00§;
      }
   }
}
