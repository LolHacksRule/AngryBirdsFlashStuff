package §-^§
{
   import §1!B§.§<m§;
   import §@!Z§.§,Z§;
   
   public class §5?§
   {
       
      
      private var §,!L§:Vector.<§=q§>;
      
      public function §5?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§,!L§ = new Vector.<§=q§>();
         }
         while(_loc2_ && this);
         
      }
      
      public function §[!9§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr121:
            while(true)
            {
               §§push(§§pop());
               addr122:
               while(true)
               {
                  §§pop().§§slot[2] = §§pop();
                  addr123:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §4!l§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(_loc6_)
         {
            param1.E = true;
         }
         var _loc2_:§=q§ = this.§=O§(param1.C);
         if(!(_loc7_ && this))
         {
            if(_loc2_.§[N§())
            {
               addr50:
               for each(_loc3_ in _loc2_.§;!3§())
               {
                  if(_loc6_)
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(_loc7_)
               {
               }
            }
            else
            {
               §<m§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §,!c§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§=q§ = new §=q§(param1,param2);
         if(!(_loc4_ && _loc3_))
         {
            this.§,!L§.push(_loc3_);
         }
         do
         {
            §§push(§<m§);
            §§push("[ResponseHandler] Command: ");
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() + " added.");
               }
            }
            §§pop().log(§§pop());
         }
         while(!(_loc5_ || this));
         
      }
      
      public function §[n§() : Vector.<§=q§>
      {
         return this.§,!L§;
      }
      
      public function §=O§(param1:String) : §=q§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§=q§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§,!L§)
         {
            if(_loc6_ || _loc3_)
            {
               if(_loc2_.§`!$§() == param1)
               {
                  if(_loc6_ || _loc3_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         throw new Error("[ResponseHandler] Command not found: " + param1);
      }
   }
}
