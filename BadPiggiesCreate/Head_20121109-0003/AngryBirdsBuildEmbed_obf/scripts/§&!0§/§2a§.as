package §&!0§
{
   public class §2a§
   {
       
      
      private var §class§:Number;
      
      private var §>!<§:String;
      
      private var §^'§:Function;
      
      private var §`!r§:Function;
      
      private var §01§:Boolean = true;
      
      public function §2a§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            if(_loc4_)
            {
               this.§>!<§ = param1;
               if(_loc3_)
               {
               }
               §§goto(addr31);
            }
            this.§class§ = param2;
         }
         addr31:
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §'!k§() : String
      {
         return this.§>!<§;
      }
      
      public function §-!7§() : Function
      {
         return this.§^'§;
      }
      
      public function §,!%§() : Function
      {
         return this.§`!r§;
      }
      
      public function §,;§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§01§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  this.§^'§.call(null,param1);
               }
            }
         }
      }
      
      public function §#!A§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§01§)
            {
               if(_loc3_ || param1)
               {
                  addr29:
                  this.§`!r§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §&!,§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§^'§ = param1;
            if(_loc4_ || this)
            {
               this.§`!r§ = param2;
            }
         }
      }
      
      public function § for§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§01§ = false;
         }
      }
      
      public function §%t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§01§ = true;
         }
      }
   }
}
