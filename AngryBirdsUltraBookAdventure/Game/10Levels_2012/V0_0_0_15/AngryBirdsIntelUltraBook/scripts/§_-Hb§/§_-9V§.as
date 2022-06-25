package §_-Hb§
{
   public class §_-9V§
   {
       
      
      private var §_-28§:Number;
      
      private var §_-Uu§:String;
      
      private var §_-Xy§:Function;
      
      private var §_-Gj§:Function;
      
      private var §_-UB§:Boolean = true;
      
      public function §_-9V§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§_-Uu§ = param1;
               while(_loc3_)
               {
                  this.§_-28§ = param2;
                  if(_loc3_ || this)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §_-Os§() : String
      {
         return this.§_-Uu§;
      }
      
      public function §_-N7§() : Function
      {
         return this.§_-Xy§;
      }
      
      public function §_-yg§() : Function
      {
         return this.§_-Gj§;
      }
      
      public function §_-DD§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§_-UB§)
            {
               if(!_loc2_)
               {
                  this.§_-Xy§.call(null,param1);
               }
            }
         }
      }
      
      public function §_-K3§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§_-UB§)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§_-Gj§.call(null,param1);
               }
            }
         }
      }
      
      public function §_-Et§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§_-Xy§ = param1;
         }
         do
         {
            this.§_-Gj§ = param2;
         }
         while(!_loc4_);
         
      }
      
      public function §_-03a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§_-UB§ = false;
         }
      }
      
      public function §_-4n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-UB§ = true;
         }
      }
   }
}
