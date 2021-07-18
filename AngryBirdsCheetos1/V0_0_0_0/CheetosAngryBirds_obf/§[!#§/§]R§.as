package §[!#§
{
   public class §]R§
   {
       
      
      private var § !&§:Number;
      
      private var §0!Z§:String;
      
      private var §6F§:Function;
      
      private var §<!=§:Function;
      
      private var §%h§:Boolean = true;
      
      public function §]R§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            this.§0!Z§ = param1;
            do
            {
               this.§ !&§ = param2;
            }
            while(_loc3_);
            
         }
         while(!(_loc4_ || _loc3_));
         
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §#F§() : String
      {
         return this.§0!Z§;
      }
      
      public function §4+§() : Function
      {
         return this.§6F§;
      }
      
      public function §&<§() : Function
      {
         return this.§<!=§;
      }
      
      public function §]L§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§%h§)
            {
               if(!_loc2_)
               {
                  addr44:
                  this.§6F§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §+2§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§%h§)
            {
               if(!_loc3_)
               {
                  addr43:
                  this.§<!=§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §7^§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§6F§ = param1;
            do
            {
               this.§<!=§ = param2;
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function §=!U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§%h§ = false;
         }
      }
      
      public function §<Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%h§ = true;
         }
      }
   }
}
