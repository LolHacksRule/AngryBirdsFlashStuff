package §<!>§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §11§ extends EventDispatcher implements § §
   {
       
      
      private var §'!<§:Number = 0;
      
      private var §0"=§:Number;
      
      private var §%"w§:Function;
      
      private var §&"`§:Array;
      
      private var §7!p§:int = 1;
      
      public function §11§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            while(true)
            {
               this.§%"w§ = param1;
               loop1:
               for(; !(_loc4_ && this); while(_loc5_ || this)
               {
                  this.§&"`§ = param3;
                  if(_loc5_ || this)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.§0"=§ = Math.max(param2,0.0001);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§'!<§);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            this.§'!<§ = Math.min(this.§0"=§,this.§'!<§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§0"=§);
                  addr163:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(!_loc3_)
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
                                    this.§%"w§.apply(null,this.§&"`§);
                                    loop5:
                                    while(true)
                                    {
                                       if(this.§7!p§ > 1)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!(_loc4_ || this))
                                             {
                                                break;
                                             }
                                             this.§7!p§ = this.§7!p§ - 1;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             this.§'!<§ = 0;
                                             loop7:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc3_ && this)
                                                {
                                                   break;
                                                }
                                                if(!_loc4_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   §§push(param1);
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      addr76:
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc3_)
                                                      {
                                                         §§push(this.§0"=§);
                                                      }
                                                      §§pop().advanceTime(§§pop());
                                                      while(!_loc4_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      continue loop0;
                                                      addr77:
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§goto(addr76);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       else
                                       {
                                          dispatchEvent(new Event(Event.§&!T§));
                                          if(!(_loc3_ && param1))
                                          {
                                             addr31:
                                             return;
                                             addr51:
                                          }
                                       }
                                       §§goto(addr77);
                                    }
                                    continue loop1;
                                 }
                              }
                              §§goto(addr31);
                           }
                           addr150:
                        }
                     }
                     addr168:
                     while(true)
                     {
                        §§pop();
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      public function get isComplete() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§7!p§ == 1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr49:
                     §§pop();
                     return this.§'!<§ >= this.§0"=§;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §,!@§() : Number
      {
         return this.§0"=§;
      }
      
      public function get currentTime() : Number
      {
         return this.§'!<§;
      }
      
      public function get §;#1§() : int
      {
         return this.§7!p§;
      }
      
      public function set §;#1§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§7!p§ = param1;
         }
      }
   }
}
