package §#x§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §6!N§ extends EventDispatcher implements §2n§
   {
       
      
      private var §8"1§:Number = 0;
      
      private var §#!O§:Number;
      
      private var §[!u§:Function;
      
      private var §[q§:Array;
      
      private var §'!w§:int = 1;
      
      public function §6!N§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.§[!u§ = param1;
            }
            addr79:
         }
         while(true)
         {
            this.§#!O§ = Math.max(param2,0.0001);
            for(; _loc4_ || param1; this.§[q§ = param3,if(_loc4_)
            {
               return;
            })
            {
               if(_loc4_)
               {
                  continue;
               }
               §§goto(addr79);
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§8"1§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            this.§8"1§ = Math.min(this.§#!O§,this.§8"1§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§#!O§);
                  addr179:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr180:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr182:
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
                                    this.§[!u§.apply(null,this.§[q§);
                                    while(true)
                                    {
                                       if(this.§'!w§ <= 1)
                                       {
                                          dispatchEvent(new Event(Event.§@!e§));
                                          if(!(_loc4_ && param1))
                                          {
                                             if(!_loc4_)
                                             {
                                                if(_loc3_ || _loc2_)
                                                {
                                                   addr30:
                                                   return;
                                                   addr59:
                                                }
                                                continue loop1;
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(!(_loc3_ || param1))
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                addr119:
                                                while(true)
                                                {
                                                   this.§'!w§ = this.§'!w§ - 1;
                                                }
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr30);
                                             addr80:
                                          }
                                          while(!_loc4_)
                                          {
                                             this.§8"1§ = 0;
                                             continue loop7;
                                             §§goto(addr119);
                                          }
                                          continue;
                                       }
                                       §§goto(addr119);
                                    }
                                 }
                              }
                              §§goto(addr30);
                           }
                           addr166:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function get §!U§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§'!w§ == 1);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§pop();
                     addr44:
                     return this.§8"1§ >= this.§#!O§;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function get § B§() : Number
      {
         return this.§#!O§;
      }
      
      public function get §^#§() : Number
      {
         return this.§8"1§;
      }
      
      public function get §&!a§() : int
      {
         return this.§'!w§;
      }
      
      public function set §&!a§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'!w§ = param1;
         }
      }
   }
}
