package §`!M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&!@§ extends EventDispatcher implements § !7§
   {
       
      
      private var §[_§:Number = 0;
      
      private var §=!%§:Number;
      
      private var §;H§:Function;
      
      private var §3!K§:Array;
      
      private var §^x§:int = 1;
      
      public function §&!@§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super();
            while(true)
            {
               this.§;H§ = param1;
               while(_loc4_ || param1)
               {
                  this.§=!%§ = Math.max(param2,0.0001);
                  while(!(_loc5_ && param1))
                  {
                     this.§3!K§ = param3;
                     if(!(_loc4_ || param1))
                     {
                        continue;
                     }
                     return;
                     addr49:
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§[_§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§[_§ = Math.min(this.§=!%§,this.§[_§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§=!%§);
                  addr160:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr161:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop6:
                           while(§§pop())
                           {
                              do
                              {
                                 this.§;H§.apply(null,this.§3!K§);
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(this.§^x§ > 1)
                                    {
                                       if(_loc4_)
                                       {
                                          if(!(_loc4_ || param1))
                                          {
                                             continue;
                                          }
                                          this.§^x§ = this.§^x§ - 1;
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          this.§[_§ = 0;
                                          addr83:
                                          while(true)
                                          {
                                             if(_loc4_ || _loc3_)
                                             {
                                                break loop9;
                                             }
                                             continue loop9;
                                          }
                                       }
                                       §§push(this);
                                       §§push(_loc2_);
                                       if(!_loc3_)
                                       {
                                          §§push(param1);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc4_)
                                             {
                                                addr69:
                                                §§push(§§pop() - this.§=!%§);
                                             }
                                             §§pop().advanceTime(§§pop());
                                             break;
                                          }
                                       }
                                       §§goto(addr69);
                                    }
                                    else
                                    {
                                       dispatchEvent(new Event(Event.§0<§));
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       if(_loc4_ || param1)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             break loop6;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    §§goto(addr83);
                                 }
                              }
                              while(_loc3_ && _loc3_);
                              
                              break;
                           }
                           return;
                           addr145:
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr147);
      }
      
      public function get §@@§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§^x§ == 1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr49:
                     §§pop();
                     return this.§[_§ >= this.§=!%§;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §,l§() : Number
      {
         return this.§=!%§;
      }
      
      public function get §[m§() : Number
      {
         return this.§[_§;
      }
      
      public function get §6!I§() : int
      {
         return this.§^x§;
      }
      
      public function set §6!I§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§^x§ = param1;
         }
      }
   }
}
