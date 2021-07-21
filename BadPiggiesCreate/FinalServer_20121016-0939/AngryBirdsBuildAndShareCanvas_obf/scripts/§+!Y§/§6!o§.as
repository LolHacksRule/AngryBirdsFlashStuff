package §+!Y§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6!o§ extends EventDispatcher implements §7!@§
   {
       
      
      private var §%"-§:Number = 0;
      
      private var §@!f§:Number;
      
      private var §2!Z§:Function;
      
      private var §4b§:Array;
      
      private var §+X§:int = 1;
      
      public function §6!o§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§2!Z§ = param1;
               while(_loc4_ || param3)
               {
                  this.§@!f§ = Math.max(param2,0.0001);
                  do
                  {
                     this.§4b§ = param3;
                  }
                  while(!_loc4_);
                  
                  if(_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr41:
               }
            }
         }
         §§goto(addr41);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§%"-§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            this.§%"-§ = Math.min(this.§@!f§,this.§%"-§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§@!f§);
                  addr157:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§2!Z§.apply(null,this.§4b§);
                                    loop5:
                                    while(true)
                                    {
                                       if(!(_loc3_ || param1))
                                       {
                                          continue loop1;
                                       }
                                       if(this.§+X§ > 1)
                                       {
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             this.§+X§ = this.§+X§ - 1;
                                          }
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                this.§%"-§ = 0;
                                             }
                                             continue loop0;
                                          }
                                          addr30:
                                          return;
                                          addr117:
                                          addr75:
                                       }
                                       dispatchEvent(new Event(Event.§^8§));
                                       if(!(_loc4_ && this))
                                       {
                                          if(!_loc4_)
                                          {
                                             break loop4;
                                          }
                                          while(true)
                                          {
                                             if(_loc4_ && _loc2_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(this);
                                             §§push(_loc2_);
                                             if(_loc3_)
                                             {
                                                §§push(param1);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc3_)
                                                   {
                                                      addr71:
                                                      §§push(§§pop() - this.§@!f§);
                                                   }
                                                   §§pop().advanceTime(§§pop());
                                                   break loop5;
                                                }
                                             }
                                             §§goto(addr71);
                                          }
                                          addr80:
                                       }
                                       break;
                                       §§goto(addr80);
                                    }
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr117);
                                       }
                                       §§goto(addr75);
                                    }
                                 }
                              }
                              §§goto(addr30);
                              addr129:
                              §§push(§§pop() >= §§pop());
                              if(_loc3_ || _loc3_)
                              {
                                 continue;
                              }
                              addr162:
                              while(true)
                              {
                                 §§pop();
                                 continue loop1;
                              }
                              addr162:
                           }
                           addr137:
                        }
                     }
                     §§goto(addr162);
                  }
               }
            }
         }
         §§goto(addr30);
      }
      
      public function get §8-§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§+X§ == 1);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr54:
                     return this.§%"-§ >= this.§@!f§;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function get §!P§() : Number
      {
         return this.§@!f§;
      }
      
      public function get §@!=§() : Number
      {
         return this.§%"-§;
      }
      
      public function get §5"<§() : int
      {
         return this.§+X§;
      }
      
      public function set §5"<§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+X§ = param1;
         }
      }
   }
}
