package §[!-§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §7p§ extends EventDispatcher implements §>'§
   {
       
      
      private var §3T§:Number = 0;
      
      private var §!!^§:Number;
      
      private var §6=§:Function;
      
      private var §#G§:Array;
      
      private var §!M§:int = 1;
      
      public function §7p§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§6=§ = param1;
               while(true)
               {
                  this.§!!^§ = Math.max(param2,0.0001);
                  §§goto(addr71);
               }
            }
         }
         addr71:
         while(true)
         {
            this.§#G§ = param3;
            if(_loc4_ || param1)
            {
               if(!_loc5_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr53:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§3T§);
         if(!(_loc4_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            this.§3T§ = Math.min(this.§!!^§,this.§3T§ + param1);
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(this.§!!^§);
               addr162:
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
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       this.§6=§.apply(null,this.§#G§);
                                       while(true)
                                       {
                                          if(this.§!M§ <= 1)
                                          {
                                             dispatchEvent(new Event(Event.§8v§));
                                             if(!_loc4_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   §§goto(addr35);
                                                }
                                                while(_loc4_ && _loc2_)
                                                {
                                                   §§goto(addr122);
                                                }
                                                §§push(this);
                                                §§push(_loc2_);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§push(param1);
                                                   if(_loc3_)
                                                   {
                                                      addr72:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc3_)
                                                      {
                                                         §§push(this.§!!^§);
                                                      }
                                                      §§pop().advanceTime(§§pop());
                                                      break;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                }
                                                §§goto(addr72);
                                                addr80:
                                             }
                                             break;
                                          }
                                          if(!(_loc4_ && this))
                                          {
                                             continue;
                                          }
                                          addr122:
                                          while(true)
                                          {
                                             this.§3T§ = 0;
                                          }
                                          addr122:
                                          §§goto(addr80);
                                       }
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop1;
                              }
                           }
                           addr35:
                           return;
                           addr137:
                           §§push(§§pop() >= §§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              continue;
                           }
                           addr167:
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr167:
                        }
                        addr145:
                     }
                  }
                  §§goto(addr167);
               }
            }
         }
      }
      
      public function get §9p§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§!M§ == 1);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§pop();
                     addr65:
                     return this.§3T§ >= this.§!!^§;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function get §4A§() : Number
      {
         return this.§!!^§;
      }
      
      public function get §]!h§() : Number
      {
         return this.§3T§;
      }
      
      public function get §"!h§() : int
      {
         return this.§!M§;
      }
      
      public function set §"!h§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§!M§ = param1;
         }
      }
   }
}
