package §0j§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §,c§ extends EventDispatcher implements §,!Z§
   {
       
      
      private var §;!$§:Number = 0;
      
      private var §"3§:Number;
      
      private var §4P§:Function;
      
      private var §^!6§:Array;
      
      private var §>R§:int = 1;
      
      public function §,c§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param2)
         {
            super();
         }
         while(true)
         {
            this.§4P§ = param1;
            while(!(_loc5_ && this))
            {
               this.§"3§ = Math.max(param2,0.0001);
               do
               {
                  this.§^!6§ = param3;
               }
               while(!_loc4_);
               
               if(!_loc5_)
               {
                  return;
               }
            }
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§;!$§);
         if(_loc3_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            this.§;!$§ = Math.min(this.§"3§,this.§;!$§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§"3§);
                  addr177:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     if(_loc3_)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 return;
                              }
                              addr30:
                              §§push(§§pop() >= §§pop());
                              addr149:
                              continue loop0;
                              if(_loc3_ || param1)
                              {
                                 continue;
                              }
                              addr182:
                              while(true)
                              {
                                 §§pop();
                                 continue loop1;
                              }
                              addr182:
                           }
                           addr157:
                        }
                     }
                     §§goto(addr182);
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      public function get §;!§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>R§ == 1);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr54:
                     §§pop();
                     return this.§;!$§ >= this.§"3§;
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function get §'"§() : Number
      {
         return this.§"3§;
      }
      
      public function get §>!Y§() : Number
      {
         return this.§;!$§;
      }
      
      public function get §!f§() : int
      {
         return this.§>R§;
      }
      
      public function set §!f§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§>R§ = param1;
         }
      }
   }
}
