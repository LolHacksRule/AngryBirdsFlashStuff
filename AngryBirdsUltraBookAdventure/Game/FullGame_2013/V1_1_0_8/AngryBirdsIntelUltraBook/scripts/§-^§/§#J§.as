package §-^§
{
   public class §#J§
   {
       
      
      private var §,Q§:Number;
      
      private var §@!t§:String;
      
      private var §?t§:Function;
      
      private var §'D§:Function;
      
      private var § !k§:Boolean = true;
      
      public function §#J§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§@!t§ = param1;
               §§goto(addr46);
            }
         }
         addr46:
         while(true)
         {
            this.§,Q§ = param2;
            if(_loc3_)
            {
               if(!_loc4_)
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
      
      public function § !§() : String
      {
         return this.§@!t§;
      }
      
      public function §`c§() : Function
      {
         return this.§?t§;
      }
      
      public function §56§() : Function
      {
         return this.§'D§;
      }
      
      public function §false§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§ !k§)
            {
               if(!_loc3_)
               {
                  addr23:
                  this.§?t§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §[3§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§ !k§)
            {
               if(_loc3_)
               {
                  this.§'D§.call(null,param1);
               }
            }
         }
      }
      
      public function §%,§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§?t§ = param1;
            do
            {
               this.§'D§ = param2;
            }
            while(!_loc3_);
            
         }
      }
      
      public function §>"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§ !k§ = false;
         }
      }
      
      public function §>^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§ !k§ = true;
         }
      }
   }
}
