package §^!m§
{
   import §6]§.§,"0§;
   import §>'§.§[!a§;
   
   public class §]s§
   {
       
      
      private var §-!v§:Vector.<§!b§>;
      
      public function §]s§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               this.§-!v§ = new Vector.<§!b§>();
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      public function § _§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(null);
            addr111:
            while(true)
            {
               §§push(§§pop());
               addr112:
               while(true)
               {
                  §§pop().§§slot[2] = §§pop();
                  addr113:
                  loop3:
                  while(true)
                  {
                     §§push(§§newactivation());
                     addr98:
                     while(true)
                     {
                        §§push(null);
                        addr99:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr101:
                           while(_loc5_ || this)
                           {
                              §§push(§§newactivation());
                              continue loop0;
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §;!t§(param1:Object) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Function = null;
         if(_loc6_)
         {
            param1.E = true;
         }
         var _loc2_:§!b§ = this.§;B§(param1.C);
         if(!(_loc7_ && param1))
         {
            if(_loc2_.§!9§())
            {
               addr50:
               for each(_loc3_ in _loc2_.§+!+§())
               {
                  if(_loc6_ || _loc3_)
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
               §,"0§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr50);
      }
      
      public function §#q§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§!b§ = new §!b§(param1,param2);
         if(_loc4_ || param2)
         {
            this.§-!v§.push(_loc3_);
            do
            {
               §§push(§,"0§);
               §§push("[ResponseHandler] Command: " + param1);
               if(!_loc5_)
               {
                  §§push(§§pop() + " added.");
               }
               §§pop().log(§§pop());
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public function §+p§() : Vector.<§!b§>
      {
         return this.§-!v§;
      }
      
      public function §;B§(param1:String) : §!b§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§!b§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§-!v§)
         {
            if(_loc6_)
            {
               if(_loc2_.§>!z§() == param1)
               {
                  if(!(_loc5_ && _loc3_))
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
