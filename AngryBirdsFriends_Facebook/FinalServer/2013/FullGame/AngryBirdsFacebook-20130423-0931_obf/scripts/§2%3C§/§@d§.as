package §2<§
{
   public class §@d§
   {
       
      
      private var §`S§:Number;
      
      private var §4"8§:String;
      
      private var §%T§:Function;
      
      private var §,!^§:Function;
      
      private var §?k§:Boolean = true;
      
      public function §@d§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         do
         {
            this.§4"8§ = param1;
            do
            {
               this.§`S§ = param2;
            }
            while(!_loc3_);
            
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §="J§() : String
      {
         return this.§4"8§;
      }
      
      public function §"!k§() : Function
      {
         return this.§%T§;
      }
      
      public function § -§() : Function
      {
         return this.§,!^§;
      }
      
      public function §#"N§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§?k§)
            {
               if(!_loc2_)
               {
                  this.§%T§.call(null,param1);
               }
            }
         }
      }
      
      public function §6"<§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§?k§)
            {
               if(_loc2_ || _loc3_)
               {
                  addr28:
                  this.§,!^§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §3!L§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§%T§ = param1;
         }
         do
         {
            this.§,!^§ = param2;
         }
         while(!(_loc4_ || param2));
         
      }
      
      public function §1!k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§?k§ = false;
         }
      }
      
      public function §&J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§?k§ = true;
         }
      }
   }
}
