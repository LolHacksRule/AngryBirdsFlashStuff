package § F§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §]!#§ extends EventDispatcher implements §9U§
   {
       
      
      private var §?4§:Number = 0;
      
      private var §58§:Number;
      
      private var §>h§:Function;
      
      private var §=!#§:Array;
      
      private var §7W§:int = 1;
      
      public function §]!#§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            loop0:
            do
            {
               this.§>h§ = param1;
               while(true)
               {
                  this.§58§ = Math.max(param2,0.0001);
                  while(_loc5_)
                  {
                     this.§=!#§ = param3;
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc5_);
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§?4§);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            this.§?4§ = Math.min(this.§58§,this.§?4§ + param1);
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(this.§58§);
               addr159:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc3_ || this)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 this.§>h§.apply(null,this.§=!#§);
                                 if(this.§7W§ <= 1)
                                 {
                                    dispatchEvent(new Event(Event.§<!D§));
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 this.§7W§ = this.§7W§ - 1;
                                 while(true)
                                 {
                                    this.§?4§ = 0;
                                    loop5:
                                    while(!(_loc4_ && _loc3_))
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§push(this);
                                          §§push(_loc2_);
                                          if(!(_loc4_ && _loc2_))
                                          {
                                             §§push(param1);
                                             if(_loc3_)
                                             {
                                                addr68:
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(this.§58§);
                                                }
                                                §§pop().advanceTime(§§pop());
                                                if(_loc3_)
                                                {
                                                   break loop3;
                                                }
                                                continue loop5;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                          §§goto(addr68);
                                       }
                                    }
                                 }
                              }
                           }
                           §§pop() >= §§pop();
                           addr128:
                           return;
                           if(_loc3_ || _loc2_)
                           {
                              continue;
                           }
                           addr169:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr169:
                        }
                        addr136:
                     }
                  }
                  §§goto(addr169);
               }
            }
         }
         §§goto(addr95);
      }
      
      public function get §7L§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§7W§ == 1);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§pop();
                     addr50:
                     return this.§?4§ >= this.§58§;
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get §6<§() : Number
      {
         return this.§58§;
      }
      
      public function get currentTime() : Number
      {
         return this.§?4§;
      }
      
      public function get §+J§() : int
      {
         return this.§7W§;
      }
      
      public function set §+J§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§7W§ = param1;
         }
      }
   }
}
