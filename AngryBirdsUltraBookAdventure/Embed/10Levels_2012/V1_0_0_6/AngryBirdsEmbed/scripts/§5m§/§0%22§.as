package §5m§
{
   public class §0"§
   {
       
      
      private var §=i§:Number;
      
      private var §-$§:String;
      
      private var §!@§:Function;
      
      private var §2!A§:Function;
      
      private var §+`§:Boolean = true;
      
      public function §0"§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            if(_loc4_ || param1)
            {
               this.§-$§ = param1;
               if(_loc4_)
               {
                  this.§=i§ = param2;
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
      
      public function §0j§() : String
      {
         return this.§-$§;
      }
      
      public function §%!'§() : Function
      {
         return this.§!@§;
      }
      
      public function §%5§() : Function
      {
         return this.§2!A§;
      }
      
      public function §@5§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§+`§)
            {
               if(_loc2_)
               {
                  addr23:
                  this.§!@§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      public function §7-§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§+`§)
            {
               if(!_loc3_)
               {
                  addr28:
                  this.§2!A§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §!R§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§!@§ = param1;
            if(_loc3_)
            {
               this.§2!A§ = param2;
            }
         }
      }
      
      public function §<D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§+`§ = false;
         }
      }
      
      public function §8!0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§+`§ = true;
         }
      }
   }
}
