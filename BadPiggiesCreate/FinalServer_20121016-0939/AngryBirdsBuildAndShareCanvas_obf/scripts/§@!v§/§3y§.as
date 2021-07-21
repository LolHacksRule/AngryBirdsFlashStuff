package §@!v§
{
   import §=!M§.§9!P§;
   
   public class §3y§
   {
       
      
      private var §,!h§:String;
      
      private var §,O§:Vector.<Function>;
      
      private var §["%§:Boolean;
      
      public function §3y§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super();
            while(true)
            {
               this.§,!h§ = param1;
               while(_loc5_)
               {
                  loop4:
                  for(; _loc5_ || param2; if(!_loc5_)
                  {
                     continue;
                  },§§goto(addr25))
                  {
                     §9!P§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                     while(_loc5_ || param1)
                     {
                        this.addCallback(param2);
                        if(_loc5_ || this)
                        {
                           continue loop4;
                        }
                     }
                     while(param2 != null)
                     {
                        continue loop4;
                        §§goto(addr67);
                     }
                     addr67:
                     return;
                  }
               }
            }
         }
         while(true)
         {
            this.§["%§ = param3;
            §§goto(addr79);
         }
      }
      
      public function §]]§() : String
      {
         return this.§,!h§;
      }
      
      public function §1N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§["%§ = param1;
         }
      }
      
      public function §%!0§() : Boolean
      {
         return this.§["%§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§,O§ == null)
            {
               while(true)
               {
                  this.§,O§ = new Vector.<Function>();
                  addr77:
                  while(true)
                  {
                  }
                  addr49:
                  if(!(_loc3_ || this))
                  {
                     continue;
                  }
                  §§goto(addr20);
               }
            }
            loop2:
            for(; this.§,O§.indexOf(param1) == -1; §§goto(addr77))
            {
               if(_loc3_)
               {
                  while(true)
                  {
                     this.§,O§.push(param1);
                  }
                  addr43:
               }
               while(true)
               {
                  if(!_loc3_)
                  {
                     continue loop2;
                  }
                  §§goto(addr49);
               }
            }
            addr20:
            return;
         }
         §§goto(addr43);
      }
      
      public function §^D§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§,O§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  addr51:
                  this.§,O§.splice(this.§,O§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §`'§() : Vector.<Function>
      {
         return this.§,O§;
      }
   }
}
