package §"&§
{
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class §5!k§ extends EventDispatcher implements §=q§
   {
       
      
      private var §7r§:Number = 0;
      
      private var §+"?§:Number;
      
      private var §'!M§:Function;
      
      private var §16§:Array;
      
      private var §;"=§:int = 1;
      
      public function §5!k§(param1:Function, param2:Number, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            super();
            while(true)
            {
               this.§'!M§ = param1;
               while(true)
               {
                  this.§+"?§ = Math.max(param2,0.0001);
                  §§goto(addr72);
               }
            }
         }
         addr72:
         while(true)
         {
            this.§16§ = param3;
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr54:
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§7r§);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§7r§ = Math.min(this.§+"?§,this.§7r§ + param1);
            loop0:
            while(true)
            {
               §§push(_loc2_);
               loop1:
               while(true)
               {
                  §§push(this.§+"?§);
                  addr155:
                  while(true)
                  {
                     §§push(§§pop() < §§pop());
                     addr156:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              continue loop1;
                           }
                           addr158:
                        }
                        else
                        {
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr26:
                              }
                              while(!_loc3_)
                              {
                                 this.§'!M§.apply(null,this.§16§);
                                 continue loop0;
                                 if(_loc4_ || param1)
                                 {
                                    §§goto(addr26);
                                 }
                              }
                              continue loop1;
                              return;
                           }
                           addr133:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      public function get §3r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§;"=§ == 1);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr59:
                     §§pop();
                     return this.§7r§ >= this.§+"?§;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function get §4!4§() : Number
      {
         return this.§+"?§;
      }
      
      public function get §=""§() : Number
      {
         return this.§7r§;
      }
      
      public function get §@c§() : int
      {
         return this.§;"=§;
      }
      
      public function set §@c§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§;"=§ = param1;
         }
      }
   }
}
