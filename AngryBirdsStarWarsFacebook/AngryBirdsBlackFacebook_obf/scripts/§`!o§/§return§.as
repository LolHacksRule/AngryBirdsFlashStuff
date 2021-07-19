package §`!o§
{
   import §5t§.Log;
   
   public class §return§
   {
       
      
      private var §`#W§:String;
      
      private var §6!y§:Vector.<Function>;
      
      private var §;#J§:Boolean;
      
      public function §return§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            while(true)
            {
               this.§`#W§ = param1;
               while(_loc5_)
               {
                  this.§;#J§ = param3;
                  loop2:
                  while(!(_loc4_ && param2))
                  {
                     loop3:
                     while(param2 != null)
                     {
                        if(!_loc4_)
                        {
                           Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                        }
                        while(_loc5_)
                        {
                           this.addCallback(param2);
                           if(_loc5_ || param1)
                           {
                              break loop3;
                           }
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §86§() : String
      {
         return this.§`#W§;
      }
      
      public function §1#V§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;#J§ = param1;
         }
      }
      
      public function §6!h§() : Boolean
      {
         return this.§;#J§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§6!y§ == null)
            {
               while(true)
               {
                  this.§6!y§ = new Vector.<Function>();
                  addr81:
                  while(true)
                  {
                  }
               }
               addr75:
            }
            while(this.§6!y§.indexOf(param1) == -1)
            {
               if(_loc2_ || _loc2_)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     this.§6!y§.push(param1);
                  }
                  else
                  {
                     §§goto(addr75);
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function §&z§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§6!y§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  this.§6!y§.splice(this.§6!y§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §[z§() : Vector.<Function>
      {
         return this.§6!y§;
      }
   }
}
