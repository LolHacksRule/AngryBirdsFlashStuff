package §,M§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class § #§ extends EventDispatcher implements §6!G§
   {
       
      
      private var §?!'§:Number = 0;
      
      private var §1!S§:Number;
      
      private var §>!N§:Function;
      
      private var §'!X§:Array;
      
      private var §,<§:int = 1;
      
      public function § #§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
         }
         while(true)
         {
            this.§>!N§ = param1;
            while(_loc5_)
            {
               this.§1!S§ = Math.max(param2,0.0001);
               while(_loc5_ || this)
               {
                  this.§'!X§ = param3;
                  if(_loc5_ || param1)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§?!'§);
         if(_loc4_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§?!'§ = Math.min(this.§1!S§,this.§?!'§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§1!S§);
                  addr163:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§>!N§.apply(null,this.§'!X§);
                                    addr158:
                                    loop7:
                                    while(true)
                                    {
                                       if(this.§,<§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§9Y§));
                                          if(!_loc3_)
                                          {
                                             break loop3;
                                          }
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break loop3;
                                                   }
                                                   break;
                                                }
                                                continue loop0;
                                             }
                                             addr88:
                                             while(!(_loc4_ || _loc3_))
                                             {
                                             }
                                             if(_loc4_)
                                             {
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(_loc4_ || param1)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      §§push(this.§1!S§);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                continue;
                                             }
                                             continue loop7;
                                          }
                                          continue loop4;
                                       }
                                       while(!_loc3_)
                                       {
                                          this.§,<§ = this.§,<§ - 1;
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              break;
                              addr142:
                              §§push(§§pop() >= §§pop());
                              if(_loc4_ || param1)
                              {
                                 continue;
                              }
                              addr173:
                              while(true)
                              {
                                 §§pop();
                                 continue loop1;
                                 §§goto(addr142);
                              }
                              addr173:
                           }
                           return;
                           addr150:
                        }
                     }
                     §§goto(addr173);
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public function get §5@§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§,<§ == 1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§pop();
                     addr60:
                     return this.§?!'§ >= this.§1!S§;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get §2c§() : Number
      {
         return this.§1!S§;
      }
      
      public function get §7-§() : Number
      {
         return this.§?!'§;
      }
      
      public function get §!7§() : int
      {
         return this.§,<§;
      }
      
      public function set §!7§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§,<§ = param1;
         }
      }
   }
}
