package §85§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §!!b§ extends EventDispatcher implements §?!%§
   {
       
      
      private var §0Q§:Number = 0;
      
      private var §[!q§:Number;
      
      private var §4u§:Function;
      
      private var §&s§:Array;
      
      private var §%!o§:int = 1;
      
      public function §!!b§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§4u§ = param1;
               loop1:
               do
               {
                  this.§[!q§ = Math.max(param2,0.0001);
                  while(!_loc5_)
                  {
                     this.§&s§ = param3;
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(!(_loc4_ || param2));
               
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§0Q§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            this.§0Q§ = Math.min(this.§[!q§,this.§0Q§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§[!q§);
                  addr172:
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
                                    this.§4u§.apply(null,this.§&s§);
                                    loop5:
                                    while(true)
                                    {
                                       if(this.§%!o§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§%!W§));
                                          if(_loc3_ || _loc3_)
                                          {
                                             break;
                                          }
                                          loop6:
                                          for(; !(_loc3_ || this); §§pop().advanceTime(§§pop()))
                                          {
                                             do
                                             {
                                                if(_loc4_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                             }
                                             while(_loc4_);
                                             
                                             if(_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(_loc3_)
                                                {
                                                   §§push(param1);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc4_ && _loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      addr72:
                                                      §§push(this.§[!q§);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   continue loop6;
                                                }
                                                §§goto(addr72);
                                             }
                                          }
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          continue loop1;
                                       }
                                       while(_loc3_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          this.§%!o§ = this.§%!o§ - 1;
                                          while(true)
                                          {
                                             this.§0Q§ = 0;
                                             §§goto(addr100);
                                          }
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              return;
                              addr149:
                           }
                           addr160:
                        }
                     }
                     addr177:
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function get §&W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§%!o§ == 1);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     addr45:
                     return this.§0Q§ >= this.§[!q§;
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function get §6k§() : Number
      {
         return this.§[!q§;
      }
      
      public function get §[!v§() : Number
      {
         return this.§0Q§;
      }
      
      public function get §>!Y§() : int
      {
         return this.§%!o§;
      }
      
      public function set §>!Y§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§%!o§ = param1;
         }
      }
   }
}
