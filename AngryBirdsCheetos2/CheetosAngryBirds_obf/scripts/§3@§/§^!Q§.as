package §3@§
{
   import §>^§.§!6§;
   
   public class §^!Q§
   {
       
      
      private var § z§:String;
      
      private var §^D§:Vector.<Function>;
      
      private var §,!+§:Boolean;
      
      public function §^!Q§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            loop0:
            while(true)
            {
               this.§ z§ = param1;
               loop1:
               while(true)
               {
                  this.§,!+§ = param3;
                  loop2:
                  while(param2 != null)
                  {
                     while(_loc5_)
                     {
                        §!6§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                        do
                        {
                           this.addCallback(param2);
                        }
                        while(!(_loc5_ || param3));
                        
                        if(_loc5_ || param2)
                        {
                           if(!_loc4_)
                           {
                              if(_loc5_)
                              {
                                 addr56:
                                 break loop2;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      public function §@!I§() : String
      {
         return this.§ z§;
      }
      
      public function §&R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,!+§ = param1;
         }
      }
      
      public function §@!?§() : Boolean
      {
         return this.§,!+§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^D§ == null)
            {
               addr70:
               while(true)
               {
                  this.§^D§ = new Vector.<Function>();
                  addr76:
                  while(true)
                  {
                  }
               }
               addr70:
            }
            for(; this.§^D§.indexOf(param1) == -1; §§goto(addr76))
            {
               if(_loc2_)
               {
                  this.§^D§.push(param1);
               }
               if(!_loc2_)
               {
                  continue;
               }
               if(!(_loc3_ && param1))
               {
                  break;
               }
               §§goto(addr70);
            }
            return;
         }
         §§goto(addr70);
      }
      
      public function §,2§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§^D§.indexOf(param1) > -1)
            {
               if(!_loc3_)
               {
                  addr51:
                  this.§^D§.splice(this.§^D§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §6O§() : Vector.<Function>
      {
         return this.§^D§;
      }
   }
}
