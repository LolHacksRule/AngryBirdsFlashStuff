package §`!o§
{
   public class §^!f§
   {
       
      
      private var §<#>§:Number;
      
      private var §2#_§:String;
      
      private var §8"i§:Function;
      
      private var §8#A§:Function;
      
      private var §02§:Boolean = true;
      
      public function §^!f§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         while(true)
         {
            this.§2#_§ = param1;
            while(_loc3_)
            {
               this.§<#>§ = param2;
               if(!_loc4_)
               {
                  return;
               }
            }
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §@"X§() : String
      {
         return this.§2#_§;
      }
      
      public function §`P§() : Function
      {
         return this.§8"i§;
      }
      
      public function §@!w§() : Function
      {
         return this.§8#A§;
      }
      
      public function §'i§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§02§)
            {
               if(!_loc3_)
               {
                  this.§8"i§.call(null,param1);
               }
            }
         }
      }
      
      public function §?y§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§02§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr53:
                  this.§8#A§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §9R§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§8"i§ = param1;
            do
            {
               this.§8#A§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      public function §,#U§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§02§ = false;
         }
      }
      
      public function §&#>§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§02§ = true;
         }
      }
   }
}
