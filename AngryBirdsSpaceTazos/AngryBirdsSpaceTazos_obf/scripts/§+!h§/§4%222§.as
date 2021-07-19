package §+!h§
{
   public class §4"2§
   {
       
      
      private var §!L§:Number;
      
      private var §8c§:String;
      
      private var §5!A§:Function;
      
      private var §0!7§:Function;
      
      private var §+=§:Boolean = true;
      
      public function §4"2§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§8c§ = param1;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            this.§!L§ = param2;
            if(_loc3_ || param2)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §!!,§() : String
      {
         return this.§8c§;
      }
      
      public function §,§() : Function
      {
         return this.§5!A§;
      }
      
      public function §,6§() : Function
      {
         return this.§0!7§;
      }
      
      public function §=!N§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§+=§)
            {
               if(_loc3_)
               {
                  addr44:
                  this.§5!A§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §?g§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§+=§)
            {
               if(_loc2_)
               {
                  addr43:
                  this.§0!7§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §1]§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§5!A§ = param1;
         }
         do
         {
            this.§0!7§ = param2;
         }
         while(!(_loc4_ || param1));
         
      }
      
      public function §6"5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+=§ = false;
         }
      }
      
      public function §]",§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§+=§ = true;
         }
      }
   }
}
