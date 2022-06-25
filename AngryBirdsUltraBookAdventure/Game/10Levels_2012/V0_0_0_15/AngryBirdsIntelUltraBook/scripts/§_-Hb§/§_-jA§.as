package §_-Hb§
{
   import §_-0BH§.§_-FK§;
   import §_-py§.§_-bu§;
   
   public class §_-jA§
   {
       
      
      private var §_-wF§:Vector.<§_-5p§>;
      
      public function §_-jA§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            do
            {
               this.§_-wF§ = new Vector.<§_-5p§>();
            }
            while(_loc2_);
            
         }
      }
      
      public function §_-Oi§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[2] = §§pop();
                  while(true)
                  {
                     §§push(§§newactivation());
                     loop4:
                     while(true)
                     {
                        §§push(null);
                        addr90:
                        while(_loc6_ || _loc2_)
                        {
                           §§pop().§§slot[4] = §§pop();
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
      }
      
      public function §_-03N§(param1:Object) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:Function = null;
         if(_loc7_ || _loc2_)
         {
            param1.E = true;
         }
         var _loc2_:§_-5p§ = this.§_-nZ§(param1.C);
         if(!_loc6_)
         {
            if(_loc2_.§_-r6§())
            {
               for each(_loc3_ in _loc2_.§_-k4§())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     _loc3_.call(null,param1);
                  }
               }
               if(!_loc7_)
               {
               }
               addr51:
            }
            else
            {
               §_-FK§.log("[ResponseHandler] Got error-message for disabled command, ignoring message");
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §_-0-r§(param1:String, param2:Function) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-5p§ = new §_-5p§(param1,param2);
         if(!_loc5_)
         {
            this.§_-wF§.push(_loc3_);
         }
         do
         {
            §§push(§_-FK§);
            §§push("[ResponseHandler] Command: ");
            if(_loc4_ || this)
            {
               §§push(§§pop() + param1);
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
         }
         while(§§pop().log(§§pop()), !_loc4_);
         
      }
      
      public function §_-Q8§() : Vector.<§_-5p§>
      {
         return this.§_-wF§;
      }
      
      public function §_-nZ§(param1:String) : §_-5p§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-5p§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§_-wF§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(!(_loc5_ || this))
               {
                  break;
               }
               if(_loc2_.§_-dz§() == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            throw new Error("[ResponseHandler] Command not found: " + param1);
         }
         return _loc2_;
      }
   }
}
