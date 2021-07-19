package §[!#§
{
   import §@,§.§4h§;
   
   public class §-Z§
   {
       
      
      private var §96§:String;
      
      private var §3T§:Vector.<Function>;
      
      private var §3!W§:Boolean;
      
      public function §-Z§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§96§ = param1;
               while(true)
               {
                  this.§3!W§ = param3;
                  continue loop0;
                  addr72:
                  loop3:
                  while(_loc5_ || this)
                  {
                     while(true)
                     {
                        this.addCallback(param2);
                        if(_loc5_ || this)
                        {
                           addr25:
                           return;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr79);
      }
      
      public function §5!$§() : String
      {
         return this.§96§;
      }
      
      public function §&s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§3!W§ = param1;
         }
      }
      
      public function §@_§() : Boolean
      {
         return this.§3!W§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§3T§ == null)
            {
               if(_loc3_ || param1)
               {
                  addr81:
                  this.§3T§ = new Vector.<Function>();
               }
               while(true)
               {
               }
               addr87:
            }
            while(this.§3T§.indexOf(param1) == -1)
            {
               if(_loc3_ || param1)
               {
                  if(_loc2_)
                  {
                     §§goto(addr87);
                     continue;
                  }
                  this.§3T§.push(param1);
               }
               break;
            }
            return;
         }
         §§goto(addr81);
      }
      
      public function §!9§(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§3T§.indexOf(param1) > -1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§3T§.splice(this.§3T§.indexOf(param1),1);
               }
            }
         }
      }
      
      public function §=!@§() : Vector.<Function>
      {
         return this.§3T§;
      }
   }
}
