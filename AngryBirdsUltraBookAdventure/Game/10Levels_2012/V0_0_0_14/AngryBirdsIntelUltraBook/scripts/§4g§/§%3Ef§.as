package §4g§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §>f§ extends EventDispatcher implements §@7§
   {
       
      
      private var §#!n§:Number = 0;
      
      private var §]Z§:Number;
      
      private var §=1§:Function;
      
      private var §[8§:Array;
      
      private var §-!e§:int = 1;
      
      public function §>f§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            do
            {
               this.§=1§ = param1;
               do
               {
                  this.§]Z§ = Math.max(param2,0.0001);
                  do
                  {
                     this.§[8§ = param3;
                  }
                  while(_loc4_ && param2);
                  
               }
               while(!_loc5_);
               
            }
            while(_loc4_);
            
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§#!n§);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§#!n§ = Math.min(this.§]Z§,this.§#!n§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§]Z§);
                  addr190:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr191:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr193:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    this.§=1§.apply(null,this.§[8§);
                                    continue loop0;
                                 }
                                 addr162:
                              }
                              addr26:
                              return;
                           }
                           addr160:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function get §^!_§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§-!e§ == 1);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr49:
                     §§pop();
                     return this.§#!n§ >= this.§]Z§;
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get §9!t§() : Number
      {
         return this.§]Z§;
      }
      
      public function get §&a§() : Number
      {
         return this.§#!n§;
      }
      
      public function get §#!t§() : int
      {
         return this.§-!e§;
      }
      
      public function set §#!t§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-!e§ = param1;
         }
      }
   }
}
