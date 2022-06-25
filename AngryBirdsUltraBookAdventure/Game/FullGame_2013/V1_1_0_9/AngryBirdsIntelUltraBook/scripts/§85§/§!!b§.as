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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§4u§ = param1;
               §§goto(addr72);
            }
         }
         addr72:
         while(true)
         {
            this.§[!q§ = Math.max(param2,0.0001);
            do
            {
               this.§&s§ = param3;
            }
            while(_loc4_);
            
            if(_loc5_)
            {
               if(_loc5_ || param2)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§0Q§);
         if(!(_loc3_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
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
                  addr178:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc4_)
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
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             if(!(_loc3_ && param1))
                                             {
                                                if(!(_loc3_ && param1))
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr116:
                                                   while(_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop1;
                                                }
                                                addr130:
                                                while(true)
                                                {
                                                   if(_loc3_ && param1)
                                                   {
                                                      break loop6;
                                                   }
                                                   this.§0Q§ = 0;
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(!_loc3_)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc3_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§push(this.§[!q§);
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                continue loop6;
                                             }
                                          }
                                          continue loop4;
                                       }
                                       §§goto(addr116);
                                    }
                                 }
                              }
                              return;
                              addr155:
                           }
                           addr166:
                        }
                     }
                     addr183:
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§%!o§ = this.§%!o§ - 1;
            §§goto(addr130);
         }
      }
      
      public function get §&W§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§%!o§ == 1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     addr50:
                     return this.§0Q§ >= this.§[!q§;
                  }
               }
            }
         }
         §§goto(addr50);
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
         if(_loc2_)
         {
            this.§%!o§ = param1;
         }
      }
   }
}
