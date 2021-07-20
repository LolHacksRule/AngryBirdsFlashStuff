package §_-bz§
{
   public class §_-fh§
   {
       
      
      private var §_-uv§:Number;
      
      private var §_-Z7§:String;
      
      private var §_-rp§:Function;
      
      private var §_-jo§:Function;
      
      private var §_-MA§:Boolean = true;
      
      public function §_-fh§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               this.§_-Z7§ = param1;
               if(_loc3_ || this)
               {
                  addr48:
                  this.§_-uv§ = param2;
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-05§() : String
      {
         return this.§_-Z7§;
      }
      
      public function §_-pn§() : Function
      {
         return this.§_-rp§;
      }
      
      public function §_-Q8§() : Function
      {
         return this.§_-jo§;
      }
      
      public function §_-wD§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§_-MA§)
            {
               if(!(_loc3_ && param1))
               {
                  this.§_-rp§.call(null,param1);
               }
            }
         }
      }
      
      public function §_-7d§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§_-MA§)
            {
               if(!_loc2_)
               {
                  addr28:
                  this.§_-jo§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §_-9-§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§_-rp§ = param1;
            if(!(_loc3_ && param2))
            {
               this.§_-jo§ = param2;
            }
         }
      }
      
      public function §_-u0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-MA§ = false;
         }
      }
      
      public function §_-0X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§_-MA§ = true;
         }
      }
   }
}
