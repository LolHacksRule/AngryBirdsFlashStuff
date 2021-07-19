package §@!v§
{
   public class §`y§
   {
       
      
      private var §+s§:Number;
      
      private var §#§:String;
      
      private var §1!<§:Function;
      
      private var §`!P§:Function;
      
      private var §&@§:Boolean = true;
      
      public function §`y§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§#§ = param1;
               §§goto(addr62);
            }
         }
         addr62:
         while(true)
         {
            this.§+s§ = param2;
            if(_loc4_ || this)
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §-"8§() : String
      {
         return this.§#§;
      }
      
      public function §%T§() : Function
      {
         return this.§1!<§;
      }
      
      public function §8C§() : Function
      {
         return this.§`!P§;
      }
      
      public function §2!i§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§&@§)
            {
               if(!_loc2_)
               {
                  addr44:
                  this.§1!<§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §+""§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§&@§)
            {
               if(_loc2_ || _loc2_)
               {
                  this.§`!P§.call(null,param1);
               }
            }
         }
      }
      
      public function §8!s§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§1!<§ = param1;
         }
         do
         {
            this.§`!P§ = param2;
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §0!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§&@§ = false;
         }
      }
      
      public function §3$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§&@§ = true;
         }
      }
   }
}
