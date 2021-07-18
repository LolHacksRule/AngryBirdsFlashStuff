package §;f§
{
   public class §00§
   {
       
      
      private var §5C§:Number;
      
      private var §7F§:String;
      
      private var §]!E§:Function;
      
      private var §]!&§:Function;
      
      private var §%=§:Boolean = true;
      
      public function §00§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            do
            {
               this.§7F§ = param1;
               do
               {
                  this.§5C§ = param2;
               }
               while(_loc4_);
               
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §`P§() : String
      {
         return this.§7F§;
      }
      
      public function §=!&§() : Function
      {
         return this.§]!E§;
      }
      
      public function §4t§() : Function
      {
         return this.§]!&§;
      }
      
      public function §#?§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§%=§)
            {
               if(_loc3_ || param1)
               {
                  addr39:
                  this.§]!E§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §>!D§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§%=§)
            {
               if(!(_loc3_ && param1))
               {
                  this.§]!&§.call(null,param1);
               }
            }
         }
      }
      
      public function § 8§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            this.§]!E§ = param1;
            do
            {
               this.§]!&§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §`h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§%=§ = false;
         }
      }
      
      public function §2C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§%=§ = true;
         }
      }
   }
}
