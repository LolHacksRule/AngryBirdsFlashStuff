package §^V§
{
   public class §"e§
   {
       
      
      private var §6!?§:Number;
      
      private var §?9§:String;
      
      private var §8@§:Function;
      
      private var §'k§:Function;
      
      private var §4l§:Boolean = true;
      
      public function §"e§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            do
            {
               this.§?9§ = param1;
               do
               {
                  this.§6!?§ = param2;
               }
               while(!_loc3_);
               
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §%!'§() : String
      {
         return this.§?9§;
      }
      
      public function §0-§() : Function
      {
         return this.§8@§;
      }
      
      public function §5V§() : Function
      {
         return this.§'k§;
      }
      
      public function §7'§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§4l§)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§8@§.call(null,param1);
               }
            }
         }
      }
      
      public function §[!P§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§4l§)
            {
               if(!_loc3_)
               {
                  addr43:
                  this.§'k§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §]!]§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§8@§ = param1;
            do
            {
               this.§'k§ = param2;
            }
            while(_loc4_);
            
         }
      }
      
      public function §&,§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§4l§ = false;
         }
      }
      
      public function § !2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4l§ = true;
         }
      }
   }
}
