package §6!a§
{
   import §6b§.Log;
   
   public class ServerCommand
   {
       
      
      private var §;3§:String;
      
      private var §-H§:Vector.<Function>;
      
      private var §3!#§:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            super();
            while(true)
            {
               this.§;3§ = param1;
               loop1:
               while(true)
               {
                  this.§3!#§ = param3;
                  while(param2 != null)
                  {
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  addr25:
                  return;
               }
               if(_loc4_ && param2)
               {
                  continue;
               }
               §§goto(addr89);
            }
         }
         while(true)
         {
            Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            §§goto(addr75);
         }
      }
      
      public function §-!`§() : String
      {
         return this.§;3§;
      }
      
      public function §4%§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§3!#§ = param1;
         }
      }
      
      public function §4Y§() : Boolean
      {
         return this.§3!#§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§-H§ == null)
            {
               while(true)
               {
                  this.§-H§ = new Vector.<Function>();
                  addr80:
                  while(true)
                  {
                  }
               }
               addr72:
            }
            while(this.§-H§.indexOf(param1) == -1)
            {
               if(!_loc2_)
               {
                  if(!(_loc3_ || this))
                  {
                     §§goto(addr80);
                     continue;
                  }
                  if(!_loc2_)
                  {
                     addr62:
                     this.§-H§.push(param1);
                  }
                  else
                  {
                     §§goto(addr72);
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function §in§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§-H§.indexOf(param1) > -1)
            {
               if(_loc3_ || _loc2_)
               {
                  addr42:
                  this.§-H§.splice(this.§-H§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §"!-§() : Vector.<Function>
      {
         return this.§-H§;
      }
   }
}
