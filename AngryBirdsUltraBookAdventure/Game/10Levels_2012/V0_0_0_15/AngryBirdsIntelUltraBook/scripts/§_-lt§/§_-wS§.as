package §_-lt§
{
   public class §_-wS§
   {
      
      public static const §_-oA§:int = 0;
      
      public static const §_-zO§:int = 1;
      
      public static const §_-e8§:int = 2;
      
      public static const §_-09r§:int = 3;
      
      public static const §_-Lh§:int = 4;
      
      private static var §_-C2§:§_-wS§;
      
      private static var §_-i9§:§_-wS§;
      
      private static var §_-x2§:§_-wS§;
      
      private static var §_-px§:§_-wS§;
      
      private static var §_-3n§:§_-wS§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-oA§ = 0;
         }
         while(true)
         {
            §_-zO§ = 1;
            loop1:
            while(true)
            {
               §_-e8§ = 2;
               loop2:
               while(true)
               {
                  §_-09r§ = 3;
                  while(true)
                  {
                     §_-Lh§ = 4;
                     continue loop2;
                     loop7:
                     while(_loc2_ || _loc1_)
                     {
                        §_-px§ = new §_-wS§(0,0,10,1500,5,150,§_-e8§);
                        do
                        {
                           §_-3n§ = new §_-wS§(0,0,5,10,7,275,§_-Lh§);
                        }
                        while(!(_loc2_ || §_-wS§));
                        
                        if(_loc2_ || _loc2_)
                        {
                           addr50:
                           if(!(_loc1_ && §_-wS§))
                           {
                              if(_loc2_)
                              {
                                 return;
                              }
                              continue loop1;
                           }
                           loop6:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 addr122:
                                 if(_loc1_ && §_-wS§)
                                 {
                                    break;
                                 }
                                 §_-x2§ = new §_-wS§(0,0,15,1750,5,300,§_-09r§);
                                 continue loop7;
                              }
                              addr142:
                              while(true)
                              {
                                 §_-i9§ = new §_-wS§(0,0,10,500,7.5,600,§_-zO§);
                                 continue loop6;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public var x:Number;
      
      public var y:Number;
      
      private var §_-05s§:Number;
      
      private var §_-r0§:Number;
      
      private var §_-jT§:Number;
      
      private var §_-oN§:Number;
      
      private var §_-kV§:int;
      
      public function §_-wS§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int = 0)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            super();
         }
         while(true)
         {
            this.x = param1;
            loop1:
            while(true)
            {
               this.y = param2;
               loop2:
               while(true)
               {
                  this.§_-05s§ = param3;
                  while(true)
                  {
                     this.§_-r0§ = param4;
                     while(_loc8_ || this)
                     {
                        if(!_loc9_)
                        {
                           this.§_-jT§ = param5;
                           while(!_loc9_)
                           {
                              continue loop2;
                           }
                           continue;
                           addr53:
                        }
                        continue loop1;
                     }
                  }
               }
            }
            while(!_loc9_)
            {
               this.§_-kV§ = param7;
               if(!_loc8_)
               {
                  continue;
               }
               if(!_loc9_)
               {
                  return;
               }
               §§goto(addr53);
            }
         }
      }
      
      public static function createExplosion(param1:int, param2:Number, param3:Number) : §_-wS§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:§_-wS§ = null;
         §§push(param1);
         if(!(_loc6_ && param3))
         {
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param1))
            {
               §§push(§_-zO§);
               if(_loc7_)
               {
                  §§push(_loc5_);
                  if(!(_loc6_ && param2))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc7_ || §_-wS§)
                        {
                           addr92:
                           §§push(0);
                           if(!(_loc7_ || param1))
                           {
                              addr155:
                              if(§§pop() === _loc5_)
                              {
                                 addr157:
                                 §§push(3);
                                 if(_loc7_)
                                 {
                                    addr160:
                                 }
                              }
                              else
                              {
                                 §§push(4);
                              }
                           }
                           addr166:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc4_ = §_-i9§;
                                 break;
                              case 1:
                                 _loc4_ = §_-px§;
                                 break;
                              case 2:
                                 _loc4_ = §_-x2§;
                                 break;
                              case 3:
                                 _loc4_ = §_-3n§;
                                 break;
                              default:
                                 _loc4_ = §_-C2§;
                           }
                           return new §_-wS§(param2,param3,_loc4_.§_-0EY§,_loc4_.push,_loc4_.§_-Lf§,_loc4_.damage,param1);
                           addr165:
                        }
                        else
                        {
                           addr133:
                           §§push(2);
                           if(_loc6_ && param2)
                           {
                              §§goto(addr160);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr160);
                     }
                     else
                     {
                        §§push(§_-e8§);
                        if(_loc7_)
                        {
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc6_ && §_-wS§))
                                 {
                                    §§push(1);
                                    if(!(_loc6_ && param3))
                                    {
                                       addr123:
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr157);
                                 }
                              }
                              else
                              {
                                 §§push(§_-09r§);
                                 if(!_loc6_)
                                 {
                                    addr127:
                                    §§push(_loc5_);
                                    if(_loc7_)
                                    {
                                       addr130:
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc7_)
                                          {
                                             §§goto(addr133);
                                          }
                                          else
                                          {
                                             §§goto(addr157);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§_-Lh§);
                                          if(_loc7_)
                                          {
                                             §§goto(addr155);
                                          }
                                       }
                                    }
                                    §§goto(addr155);
                                 }
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr127);
                     }
                  }
                  §§goto(addr130);
               }
               §§goto(addr123);
            }
            §§goto(addr92);
         }
         §§goto(addr166);
      }
      
      public function get §_-0EY§() : Number
      {
         return this.§_-05s§;
      }
      
      public function get push() : Number
      {
         return this.§_-r0§;
      }
      
      public function get §_-Lf§() : Number
      {
         return this.§_-jT§;
      }
      
      public function get damage() : Number
      {
         return this.§_-oN§;
      }
      
      public function get type() : int
      {
         return this.§_-kV§;
      }
   }
}
