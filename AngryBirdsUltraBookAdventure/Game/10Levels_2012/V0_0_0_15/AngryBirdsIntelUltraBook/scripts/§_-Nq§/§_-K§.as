package §_-Nq§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §_-K§ extends EventDispatcher implements §_-eI§
   {
       
      
      private var §_-Pe§:Number = 0;
      
      private var §_-hV§:Number;
      
      private var §_-08y§:Function;
      
      private var §_-Yv§:Array;
      
      private var §_-dW§:int = 1;
      
      public function §_-K§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            while(true)
            {
               this.§_-08y§ = param1;
               loop1:
               while(!_loc5_)
               {
                  while(true)
                  {
                     this.§_-hV§ = Math.max(param2,0.0001);
                     do
                     {
                        this.§_-Yv§ = param3;
                     }
                     while(_loc5_ && param2);
                     
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-Pe§);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§_-Pe§ = Math.min(this.§_-hV§,this.§_-Pe§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§_-hV§);
                  addr162:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc3_ || param1)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              continue loop0;
                           }
                           addr30:
                           return;
                           addr132:
                        }
                     }
                     addr172:
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
            this.§_-08y§.apply(null,this.§_-Yv§);
            loop8:
            while(true)
            {
               if(this.§_-dW§ <= 1)
               {
                  dispatchEvent(new Event(Event.§_-rC§));
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr93);
                     }
                     §§goto(addr30);
                  }
                  break;
               }
               if(_loc3_)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  this.§_-dW§ = this.§_-dW§ - 1;
               }
               loop9:
               while(_loc3_)
               {
                  if(!_loc4_)
                  {
                     this.§_-Pe§ = 0;
                     addr93:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop9;
                        }
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(param1);
                           if(_loc3_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc4_ && _loc2_))
                              {
                                 addr76:
                                 §§push(§§pop() - this.§_-hV§);
                              }
                              §§pop().advanceTime(§§pop());
                              break loop8;
                           }
                        }
                        §§goto(addr76);
                     }
                     addr93:
                  }
                  else
                  {
                     §§goto(addr173);
                  }
               }
               §§goto(addr134);
               §§goto(addr93);
            }
            §§goto(addr30);
         }
      }
      
      public function get §_-yF§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§_-dW§ == 1);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     §§pop();
                     addr49:
                     return this.§_-Pe§ >= this.§_-hV§;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §_-8f§() : Number
      {
         return this.§_-hV§;
      }
      
      public function get §_-Ms§() : Number
      {
         return this.§_-Pe§;
      }
      
      public function get §_-Pt§() : int
      {
         return this.§_-dW§;
      }
      
      public function set §_-Pt§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-dW§ = param1;
         }
      }
   }
}
