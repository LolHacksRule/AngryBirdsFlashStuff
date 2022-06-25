package § $§
{
   public class §]E§
   {
       
      
      private var §4!d§:Number;
      
      private var §&L§:String;
      
      private var §96§:Function;
      
      private var §"!Y§:Function;
      
      private var §>0§:Boolean = true;
      
      public function §]E§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§&L§ = param1;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§4!d§ = param2;
            if(!(_loc3_ && _loc3_))
            {
               if(!_loc3_)
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
      
      public function §&!e§() : String
      {
         return this.§&L§;
      }
      
      public function §-!a§() : Function
      {
         return this.§96§;
      }
      
      public function §`o§() : Function
      {
         return this.§"!Y§;
      }
      
      public function §!!>§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§>0§)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§96§.call(null,param1);
               }
            }
         }
      }
      
      public function §5!d§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§>0§)
            {
               if(_loc3_)
               {
                  addr24:
                  this.§"!Y§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §%l§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§96§ = param1;
            do
            {
               this.§"!Y§ = param2;
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function §65§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>0§ = false;
         }
      }
      
      public function §@y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§>0§ = true;
         }
      }
   }
}
