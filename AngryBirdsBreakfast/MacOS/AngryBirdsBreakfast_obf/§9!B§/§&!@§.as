package §9!B§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §&!@§ extends EventDispatcher implements § _§
   {
       
      
      private var §]!b§:Number = 0;
      
      private var §"!D§:Number;
      
      private var §>-§:Function;
      
      private var §>!V§:Array;
      
      private var §^!E§:int = 1;
      
      public function §&!@§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§>-§ = param1;
               while(_loc4_)
               {
                  this.§"!D§ = Math.max(param2,0.0001);
                  do
                  {
                     this.§>!V§ = param3;
                  }
                  while(_loc5_ && param3);
                  
                  if(_loc4_ || param3)
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§]!b§);
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§]!b§ = Math.min(this.§"!D§,this.§]!b§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§"!D§);
                  addr170:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr171:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr173:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§>-§.apply(null,this.§>!V§);
                                    loop8:
                                    while(true)
                                    {
                                       if(this.§^!E§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§;8§));
                                          if(_loc4_ || _loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop7;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr118:
                                                   while(!(_loc3_ && param1))
                                                   {
                                                      while(true)
                                                      {
                                                         this.§^!E§ = this.§^!E§ - 1;
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break loop9;
                                                   }
                                                   this.§]!b§ = 0;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(param1);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr75:
                                                      §§push(this.§"!D§);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   continue loop9;
                                                }
                                                §§goto(addr75);
                                             }
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr118);
                                    }
                                 }
                              }
                              addr31:
                              return;
                           }
                           addr157:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr125);
      }
      
      public function get §1]§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^!E§ == 1);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr53:
                     §§pop();
                     return this.§]!b§ >= this.§"!D§;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function get §,!Q§() : Number
      {
         return this.§"!D§;
      }
      
      public function get §+L§() : Number
      {
         return this.§]!b§;
      }
      
      public function get repeatCount() : int
      {
         return this.§^!E§;
      }
      
      public function set repeatCount(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^!E§ = param1;
         }
      }
   }
}
