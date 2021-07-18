package §^V§
{
   import §@R§.§4,§;
   
   public class §;a§
   {
       
      
      private var §4![§:String;
      
      private var §^!-§:Vector.<Function>;
      
      private var §8!Q§:Boolean;
      
      public function §;a§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
         }
         while(true)
         {
            this.§4![§ = param1;
            loop1:
            while(!_loc4_)
            {
               this.§8!Q§ = param3;
               while(param2 != null)
               {
                  if(!(_loc5_ || param3))
                  {
                     do
                     {
                        this.addCallback(param2);
                     }
                     while(_loc4_);
                     
                  }
                  else
                  {
                     addr69:
                  }
                  if(!(_loc4_ && param1))
                  {
                     if(!(_loc5_ || param1))
                     {
                        continue loop1;
                     }
                     §4,§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                     §§goto(addr69);
                     continue loop1;
                  }
               }
               return;
            }
         }
      }
      
      public function §2!!§() : String
      {
         return this.§4![§;
      }
      
      public function §?!L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8!Q§ = param1;
         }
      }
      
      public function §+f§() : Boolean
      {
         return this.§8!Q§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§^!-§ == null)
            {
               while(true)
               {
                  this.§^!-§ = new Vector.<Function>();
                  addr71:
                  while(true)
                  {
                  }
               }
               addr65:
            }
            loop2:
            for(; this.§^!-§.indexOf(param1) == -1; §§goto(addr71))
            {
               if(_loc2_)
               {
                  while(true)
                  {
                     this.§^!-§.push(param1);
                  }
                  addr42:
               }
               while(true)
               {
                  if(!_loc2_)
                  {
                     continue loop2;
                  }
                  if(!_loc3_)
                  {
                     break loop2;
                  }
                  §§goto(addr65);
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §-=§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§^!-§.indexOf(param1) > -1)
            {
               if(!_loc2_)
               {
                  addr47:
                  this.§^!-§.splice(this.§^!-§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §%!Y§() : Vector.<Function>
      {
         return this.§^!-§;
      }
   }
}
