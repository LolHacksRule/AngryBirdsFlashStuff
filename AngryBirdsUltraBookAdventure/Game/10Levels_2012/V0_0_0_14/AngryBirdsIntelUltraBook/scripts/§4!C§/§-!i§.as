package §4!C§
{
   public class §-!i§
   {
       
      
      private var §4!Q§:Number;
      
      private var §^!5§:String;
      
      private var §3x§:Function;
      
      private var §`H§:Function;
      
      private var §1!F§:Boolean = true;
      
      public function §-!i§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
         }
         do
         {
            this.§^!5§ = param1;
            do
            {
               this.§4!Q§ = param2;
            }
            while(_loc4_);
            
         }
         while(_loc4_);
         
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8! §() : String
      {
         return this.§^!5§;
      }
      
      public function §7@§() : Function
      {
         return this.§3x§;
      }
      
      public function §=s§() : Function
      {
         return this.§`H§;
      }
      
      public function §7!7§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§1!F§)
            {
               if(!_loc2_)
               {
                  this.§3x§.call(null,param1);
               }
            }
         }
      }
      
      public function § G§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§1!F§)
            {
               if(_loc3_)
               {
                  this.§`H§.call(null,param1);
               }
            }
         }
      }
      
      public function §^9§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            this.§3x§ = param1;
            do
            {
               this.§`H§ = param2;
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function §0s§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1!F§ = false;
         }
      }
      
      public function §>T§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§1!F§ = true;
         }
      }
   }
}
