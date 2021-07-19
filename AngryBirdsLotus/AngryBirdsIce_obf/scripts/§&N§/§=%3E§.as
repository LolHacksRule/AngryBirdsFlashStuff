package §&N§
{
   public class §=>§
   {
       
      
      private var §+-§:Number;
      
      private var §]E§:String;
      
      private var §7i§:Function;
      
      private var §&[§:Function;
      
      private var §2+§:Boolean = true;
      
      public function §=>§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            do
            {
               this.§]E§ = param1;
               do
               {
                  this.§+-§ = param2;
               }
               while(_loc4_ && param2);
               
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §4y§() : String
      {
         return this.§]E§;
      }
      
      public function §,H§() : Function
      {
         return this.§7i§;
      }
      
      public function §=U§() : Function
      {
         return this.§&[§;
      }
      
      public function §+]§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            if(this.§2+§)
            {
               if(!_loc2_)
               {
                  addr39:
                  this.§7i§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §,!3§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§2+§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr44:
                  this.§&[§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §^!2§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§7i§ = param1;
            do
            {
               this.§&[§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      public function §^%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2+§ = false;
         }
      }
      
      public function §%!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§2+§ = true;
         }
      }
   }
}
