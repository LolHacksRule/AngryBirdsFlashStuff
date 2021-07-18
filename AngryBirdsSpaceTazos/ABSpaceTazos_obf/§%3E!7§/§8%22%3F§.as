package §>!7§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §8"?§ extends EventDispatcher implements §`B§
   {
       
      
      private var §7"8§:Number = 0;
      
      private var §,!c§:Number;
      
      private var §+!x§:Function;
      
      private var § g§:Array;
      
      private var §'!J§:int = 1;
      
      public function §8"?§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§+!x§ = param1;
               while(true)
               {
                  this.§,!c§ = Math.max(param2,0.0001);
                  loop2:
                  while(!(_loc4_ && param1))
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§ g§ = param3;
                        if(!(_loc4_ && param1))
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§7"8§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§7"8§ = Math.min(this.§,!c§,this.§7"8§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               addr183:
               loop1:
               while(true)
               {
                  §§push(this.§,!c§);
                  addr185:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr186:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr188:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    this.§+!x§.apply(null,this.§ g§);
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       if(this.§'!J§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§^m§));
                                          if(_loc4_ || this)
                                          {
                                             break loop6;
                                          }
                                          break;
                                       }
                                       if(!(_loc3_ && param1))
                                       {
                                          if(_loc3_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          this.§'!J§ = this.§'!J§ - 1;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          this.§7"8§ = 0;
                                          addr91:
                                          addr86:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop8;
                                             }
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             §§push(this);
                                             §§push(_loc2_);
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(param1);
                                                if(!_loc3_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr77:
                                                      §§push(§§pop() - this.§,!c§);
                                                   }
                                                   §§pop().advanceTime(§§pop());
                                                   continue;
                                                }
                                             }
                                             §§goto(addr77);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc3_ && _loc3_)
                                       {
                                          §§goto(addr91);
                                       }
                                       §§goto(addr86);
                                    }
                                 }
                                 if(!(_loc4_ || param1))
                                 {
                                    continue loop1;
                                 }
                              }
                              return;
                           }
                           addr170:
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§7"8§);
            if(_loc4_ || this)
            {
               §§push(this.§,!c§);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc3_ && _loc3_)
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr170);
                  }
                  §§goto(addr186);
               }
               §§goto(addr185);
            }
            §§goto(addr183);
         }
      }
      
      public function get §6!^§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§'!J§ == 1);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop();
                     addr60:
                     return this.§7"8§ >= this.§,!c§;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get §#F§() : Number
      {
         return this.§,!c§;
      }
      
      public function get §+V§() : Number
      {
         return this.§7"8§;
      }
      
      public function get repeatCount() : int
      {
         return this.§'!J§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§'!J§ = param1;
         }
      }
   }
}
