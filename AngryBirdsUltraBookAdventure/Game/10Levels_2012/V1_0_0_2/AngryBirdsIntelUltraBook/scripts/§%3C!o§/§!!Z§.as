package §<!o§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!Z§ extends EventDispatcher implements §8!h§
   {
       
      
      private var §0t§:Number = 0;
      
      private var §[!F§:Number;
      
      private var §1L§:Function;
      
      private var § C§:Array;
      
      private var §?2§:int = 1;
      
      public function §!!Z§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§1L§ = param1;
               while(true)
               {
                  this.§[!F§ = Math.max(param2,0.0001);
                  §§goto(addr67);
               }
            }
         }
         addr67:
         while(true)
         {
            this.§ C§ = param3;
            if(!_loc4_)
            {
               if(_loc5_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr59:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§0t§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§0t§ = Math.min(this.§[!F§,this.§0t§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§[!F§);
                  addr177:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc3_ || param1)
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
                                    this.§1L§.apply(null,this.§ C§);
                                    loop5:
                                    while(true)
                                    {
                                       if(this.§?2§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§]!%§));
                                          if(!_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                continue;
                                             }
                                             addr106:
                                             addr25:
                                             addr106:
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(param1);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr98:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc3_ || this)
                                                      {
                                                         §§push(this.§[!F§);
                                                      }
                                                      §§pop().advanceTime(§§pop());
                                                      break loop5;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§goto(addr98);
                                                §§goto(addr136);
                                             }
                                             return;
                                             addr111:
                                          }
                                          break;
                                       }
                                       if(_loc3_ || param1)
                                       {
                                          this.§?2§ = this.§?2§ - 1;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop4;
                                          }
                                          this.§0t§ = 0;
                                       }
                                       §§goto(addr111);
                                    }
                                    while(true)
                                    {
                                       if(!(_loc3_ || this))
                                       {
                                          §§goto(addr129);
                                       }
                                       §§goto(addr106);
                                    }
                                 }
                                 if(_loc4_ && param1)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop0;
                                 }
                              }
                              §§goto(addr25);
                           }
                           addr154:
                        }
                     }
                     addr187:
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function get §1!Y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§?2§ == 1);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr48:
                     §§pop();
                     return this.§0t§ >= this.§[!F§;
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function get §with§() : Number
      {
         return this.§[!F§;
      }
      
      public function get §%p§() : Number
      {
         return this.§0t§;
      }
      
      public function get §]!p§() : int
      {
         return this.§?2§;
      }
      
      public function set §]!p§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§?2§ = param1;
         }
      }
   }
}
