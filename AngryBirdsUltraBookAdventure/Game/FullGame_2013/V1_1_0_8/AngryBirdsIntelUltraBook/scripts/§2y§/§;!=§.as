package §2y§
{
   import §>f§.§&!G§;
   import §@!&§.§7!>§;
   import flash.display.MovieClip;
   
   public class §;!=§ extends §^! §
   {
       
      
      public var §<#§:int;
      
      public var §7!=§:int;
      
      public var §-a§:int;
      
      public var § %§:int;
      
      public var §-S§:Number;
      
      public var §[" §:Number;
      
      public var §4O§:Number;
      
      public var §0!d§:Number;
      
      public var §@!X§:Number;
      
      public function §;!=§(param1:XML, param2:§^! §, param3:§&!G§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §9y§ = true;
         }
         while(_loc6_ && param2);
         
      }
      
      public function §@!n§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param2)
         {
            this.§-a§ = param6;
            loop0:
            while(true)
            {
               this.§ %§ = param1 * this.§-a§;
               while(true)
               {
                  this.§@!X§ = param7;
                  loop2:
                  while(true)
                  {
                     this.§4O§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§0!d§ = param3;
                        while(true)
                        {
                           this.§-S§ = param4;
                           while(_loc8_)
                           {
                              continue loop3;
                              addr133:
                              if(!(_loc9_ && param1))
                              {
                                 addr28:
                                 this.§`4§(0);
                                 if(!_loc9_)
                                 {
                                    if(_loc9_)
                                    {
                                       §§goto(addr133);
                                    }
                                    return;
                                    addr36:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  loop6:
                  for(; !(_loc9_ && param1); while(!(_loc9_ && param3))
                  {
                     §§push(param1 == param7);
                     if(_loc8_)
                     {
                        if(_loc9_)
                        {
                           §§goto(addr143);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr145);
                  })
                  {
                     §§push(false);
                     loop7:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop6;
                           }
                           addr145:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 break loop7;
                              }
                              this.§7!=§ = 1;
                              continue loop0;
                           }
                           addr112:
                        }
                     }
                     if(!(_loc9_ && param3))
                     {
                        this.§7!=§ = Math.max(1,Math.ceil(§&O§.length / this.§ %§));
                     }
                     §§goto(addr133);
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public function §`4§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               §§push(0);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(0);
                        if(_loc6_ || param1)
                        {
                           param1 = §§pop();
                           while(true)
                           {
                              addr40:
                              addr123:
                              while(true)
                              {
                                 §§push(param1);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc6_)
                                       {
                                          break loop1;
                                       }
                                       param1 = §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop1;
                                          }
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr65:
                                 }
                                 continue loop0;
                              }
                              var _loc2_:int = §§pop();
                              §§push(_loc2_);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(int(§§pop() + this.§ %§));
                              }
                              var _loc3_:* = §§pop();
                              var _loc4_:int = 0;
                              loop6:
                              while(true)
                              {
                                 if(_loc4_ >= §&O§.length)
                                 {
                                    while(true)
                                    {
                                       §§push(§§findproperty(x));
                                       §§push(this.§4O§);
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(§§pop() - this.§<#§ * this.§-S§);
                                       }
                                       §§pop().x = §§pop();
                                       while(true)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             continue;
                                          }
                                       }
                                       continue loop6;
                                    }
                                 }
                                 else
                                 {
                                    (§&O§[_loc4_] as §7!>§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                                 }
                                 _loc4_++;
                              }
                              return;
                              if(_loc5_ && _loc2_)
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 §§goto(addr40);
                              }
                              §§push(this.§<#§);
                              if(_loc6_ || this)
                              {
                                 break loop1;
                              }
                              §§goto(addr123);
                           }
                        }
                        break;
                     }
                     addr114:
                     §§push(§§pop() * this.§@!X§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() * this.§-a§);
                     }
                     §§goto(addr123);
                  }
                  §§goto(addr40);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr79);
      }
   }
}
