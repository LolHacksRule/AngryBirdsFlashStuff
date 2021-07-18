package §9!=§
{
   import § !G§.§ #§;
   
   public class §5z§
   {
       
      
      private var §[!P§:String;
      
      private var §3W§:Vector.<Function>;
      
      private var §"!4§:Boolean;
      
      public function §5z§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§[!P§ = param1;
            loop1:
            while(_loc4_)
            {
               this.§"!4§ = param3;
               while(param2 != null)
               {
                  if(_loc4_)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        continue loop1;
                     }
                     § #§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                  }
                  do
                  {
                     this.addCallback(param2);
                  }
                  while(!(_loc4_ || param1));
                  
                  break;
               }
               return;
            }
         }
      }
      
      public function §5![§() : String
      {
         return this.§[!P§;
      }
      
      public function §[A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!4§ = param1;
         }
      }
      
      public function §0!X§() : Boolean
      {
         return this.§"!4§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§3W§ == null)
            {
               addr80:
               while(true)
               {
                  this.§3W§ = new Vector.<Function>();
                  addr86:
                  while(true)
                  {
                  }
               }
               addr80:
            }
            for(; this.§3W§.indexOf(param1) == -1; §§goto(addr86))
            {
               if(!(_loc3_ && param1))
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  this.§3W§.push(param1);
               }
               if(!(_loc3_ && param1))
               {
                  break;
               }
               §§goto(addr80);
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function §]Q§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§3W§.indexOf(param1) > -1)
            {
               if(_loc3_)
               {
                  this.§3W§.splice(this.§3W§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §&,§() : Vector.<Function>
      {
         return this.§3W§;
      }
   }
}
