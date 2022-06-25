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
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§1L§ = param1;
               while(!_loc4_)
               {
                  this.§[!F§ = Math.max(param2,0.0001);
                  while(_loc5_ || param3)
                  {
                     this.§ C§ = param3;
                     if(_loc5_ || param1)
                     {
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§0t§);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
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
                  addr184:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr185:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr187:
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
                                    this.§1L§.apply(null,this.§ C§);
                                    continue loop0;
                                    addr102:
                                    while(true)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          break loop7;
                                       }
                                       continue loop7;
                                    }
                                 }
                              }
                              addr35:
                              return;
                           }
                           addr154:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function get §1!Y§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?2§ == 1);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr43:
                     §§pop();
                     return this.§0t§ >= this.§[!F§;
                  }
               }
            }
         }
         §§goto(addr43);
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
         if(_loc2_ || this)
         {
            this.§?2§ = param1;
         }
      }
   }
}
