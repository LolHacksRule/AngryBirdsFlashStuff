package §'p§
{
   import §'!A§.§-!2§;
   import §1"2§.§'s§;
   import flash.display.MovieClip;
   
   public class §["!§ extends §`!T§
   {
       
      
      public var §7!+§:int;
      
      public var §+!j§:int;
      
      public var §-!^§:int;
      
      public var §%-§:int;
      
      public var §<!E§:Number;
      
      public var §,W§:Number;
      
      public var §8w§:Number;
      
      public var §3!,§:Number;
      
      public var §<!n§:Number;
      
      public function §["!§(param1:XML, param2:§`!T§, param3:§'s§, param4:MovieClip = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §;!v§ = true;
         }
         while(_loc5_ && param1);
         
      }
      
      public function § ">§(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            this.§-!^§ = param6;
            while(true)
            {
               this.§%-§ = param1 * this.§-!^§;
               loop1:
               while(true)
               {
                  this.§<!n§ = param7;
                  loop2:
                  while(true)
                  {
                     this.§8w§ = param2;
                     addr190:
                     while(true)
                     {
                        this.§3!,§ = param3;
                        addr171:
                        if(_loc9_ || this)
                        {
                           if(!_loc8_)
                           {
                              this.§,W§ = param5;
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               if(_loc8_ && param1)
               {
                  continue;
               }
               §§goto(addr24);
            }
         }
         §§goto(addr185);
      }
      
      public function §@!w§(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param1);
            if(_loc6_)
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
                        if(!_loc5_)
                        {
                           while(true)
                           {
                              param1 = §§pop();
                              addr89:
                              while(true)
                              {
                                 addr35:
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(_loc5_)
                                    {
                                       break loop1;
                                    }
                                    continue loop0;
                                 }
                                 continue loop0;
                              }
                           }
                           addr88:
                        }
                        break;
                     }
                     addr123:
                     addr99:
                     addr122:
                     §§push(§§pop() * this.§<!n§);
                     if(_loc6_ || _loc3_)
                     {
                        addr119:
                        §§push(§§pop() * this.§-!^§);
                     }
                     var _loc2_:int = §§pop();
                     §§push(_loc2_);
                     if(_loc6_)
                     {
                        §§push(int(§§pop() + this.§%-§));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:int = 0;
                     addr172:
                     if(_loc4_ >= §"!_§.length)
                     {
                        addr177:
                        §§push(§§findproperty(x));
                        §§push(this.§8w§);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(§§pop() - this.§7!+§ * this.§<!E§);
                        }
                        §§pop().x = §§pop();
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§findproperty(y));
                              §§push(this.§3!,§);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() - this.§7!+§ * this.§,W§);
                              }
                              §§pop().y = §§pop();
                              if(_loc6_ || _loc2_)
                              {
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    §§goto(addr177);
                                 }
                                 return;
                              }
                              §§goto(addr177);
                           }
                           _loc4_++;
                           addr234:
                        }
                        §§goto(addr172);
                     }
                     (§"!_§[_loc4_] as §-!2§).setVisibility(_loc4_ >= _loc2_ && _loc4_ < _loc3_);
                     §§goto(addr234);
                     addr85:
                  }
                  §§goto(addr35);
               }
            }
            §§goto(addr88);
         }
         §§goto(addr89);
      }
   }
}
