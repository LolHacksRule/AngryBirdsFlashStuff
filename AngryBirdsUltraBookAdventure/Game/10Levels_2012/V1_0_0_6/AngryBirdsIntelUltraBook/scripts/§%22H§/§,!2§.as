package §"H§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,!2§ extends EventDispatcher implements §!7§
   {
       
      
      private var §9!r§:Number = 0;
      
      private var §3!A§:Number;
      
      private var §2E§:Function;
      
      private var §1!§:Array;
      
      private var §2<§:int = 1;
      
      public function §,!2§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
         }
         loop0:
         do
         {
            this.§2E§ = param1;
            while(true)
            {
               this.§3!A§ = Math.max(param2,0.0001);
               while(!_loc4_)
               {
                  this.§1!§ = param3;
                  if(_loc5_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!(_loc5_ || param2));
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§9!r§);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            this.§9!r§ = Math.min(this.§3!A§,this.§9!r§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§3!A§);
                  addr154:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr155:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 this.§2E§.apply(null,this.§1!§);
                                 addr149:
                                 loop7:
                                 while(true)
                                 {
                                    if(this.§2<§ > 1)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop1;
                                          }
                                          this.§2<§ = this.§2<§ - 1;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             this.§9!r§ = 0;
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop8;
                                                }
                                                if(_loc4_)
                                                {
                                                   break;
                                                }
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(_loc3_)
                                                {
                                                   §§push(param1);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         addr64:
                                                         §§push(§§pop() - this.§3!A§);
                                                      }
                                                      §§pop().advanceTime(§§pop());
                                                      while(true)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            break loop4;
                                                         }
                                                         continue loop9;
                                                      }
                                                      addr66:
                                                   }
                                                }
                                                §§goto(addr64);
                                             }
                                             continue loop7;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       dispatchEvent(new Event(Event.§^U§));
                                       if(!(_loc4_ && this))
                                       {
                                          break loop4;
                                       }
                                    }
                                    §§goto(addr66);
                                 }
                                 addr149:
                              }
                              §§goto(addr149);
                           }
                           return;
                           addr140:
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
         §§goto(addr149);
      }
      
      public function get §+d§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§2<§ == 1);
            if(_loc1_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr44:
                     return this.§9!r§ >= this.§3!A§;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function get §3!&§() : Number
      {
         return this.§3!A§;
      }
      
      public function get §45§() : Number
      {
         return this.§9!r§;
      }
      
      public function get § Q§() : int
      {
         return this.§2<§;
      }
      
      public function set § Q§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§2<§ = param1;
         }
      }
   }
}
