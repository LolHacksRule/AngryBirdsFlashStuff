package §4!e§
{
   import §#^§.§7!A§;
   import §2!i§.§7'§;
   import flash.display.MovieClip;
   
   public class §=" § extends §08§
   {
       
      
      public var §`&§:int;
      
      public var §`!7§:int;
      
      public var §'^§:int;
      
      public var §;!<§:int;
      
      public var §<",§:Number;
      
      public var §^^§:Number;
      
      public var §9!?§:Number;
      
      public var §&!X§:Number;
      
      public var §;!U§:Number;
      
      public function §=" §(param1:XML, param2:§08§, param3:§7!A§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §]+§ = true;
         }
         while(!_loc6_);
         
      }
      
      public function §4!v§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc9_)
         {
            this.§'^§ = param6;
            while(true)
            {
               this.§;!<§ = param1 * this.§'^§;
               while(true)
               {
                  this.§;!U§ = param7;
                  loop2:
                  while(true)
                  {
                     this.§9!?§ = param2;
                     addr194:
                     while(true)
                     {
                        this.§&!X§ = param3;
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §0A§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     while(true)
                     {
                        §§push(0);
                        addr123:
                        while(true)
                        {
                           param1 = §§pop();
                           addr124:
                           while(true)
                           {
                           }
                        }
                        loop7:
                        while(!(_loc5_ && this))
                        {
                           loop8:
                           while(true)
                           {
                              this.§`&§ = param1;
                              if(!(_loc6_ || _loc2_))
                              {
                                 continue loop7;
                              }
                              addr36:
                              if(!(_loc5_ && _loc3_))
                              {
                                 while(true)
                                 {
                                    if(true)
                                    {
                                       §§push(this.§`&§);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * this.§;!U§);
                                          if(_loc6_ || _loc2_)
                                          {
                                             break loop8;
                                          }
                                          addr142:
                                          §§push(int(§§pop()));
                                       }
                                       var _loc2_:* = §§pop();
                                       §§push(_loc2_);
                                       if(!_loc5_)
                                       {
                                          §§push(int(§§pop() + this.§;!<§));
                                       }
                                       var _loc3_:* = §§pop();
                                       addr45:
                                    }
                                    else
                                    {
                                       addr143:
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc5_ && _loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(!_loc5_)
                                       {
                                          §§push(this.§`!7§);
                                          if(!_loc6_)
                                          {
                                             break;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             continue loop8;
                                          }
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             §§push(this.§`!7§);
                                             if(_loc6_ || _loc2_)
                                             {
                                                continue loop0;
                                             }
                                             addr100:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                continue loop7;
                                             }
                                             §§goto(addr36);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr123);
                                       }
                                       §§goto(addr124);
                                    }
                                    continue loop1;
                                    var _loc4_:int = 0;
                                    while(true)
                                    {
                                       if(_loc4_ >= §&!Z§.length)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             if(!(_loc6_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(_loc6_ || param1)
                                             {
                                                §§push(§§findproperty(x));
                                                §§push(this.§9!?§);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() - this.§`&§ * this.§<",§);
                                                }
                                                §§pop().x = §§pop();
                                                break;
                                             }
                                             _loc4_++;
                                             continue;
                                             addr254:
                                          }
                                          break;
                                       }
                                       (§&!Z§[_loc4_] as §7'§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                                       §§goto(addr254);
                                    }
                                    do
                                    {
                                       §§push(§§findproperty(y));
                                       §§push(this.§&!X§);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop() - this.§`&§ * this.§^^§);
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    while(_loc5_ && param1);
                                    
                                    return;
                                 }
                                 addr43:
                              }
                              §§goto(addr61);
                           }
                           §§goto(addr142);
                        }
                     }
                  }
                  §§goto(addr45);
               }
            }
         }
         §§goto(addr43);
      }
   }
}
