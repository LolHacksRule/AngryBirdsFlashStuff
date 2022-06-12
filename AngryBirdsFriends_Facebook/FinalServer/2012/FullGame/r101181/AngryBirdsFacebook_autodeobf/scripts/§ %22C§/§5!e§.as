package § "C§
{
   public class §5!e§
   {
       
      
      private var §'!]§:Number;
      
      private var §8!x§:String;
      
      private var §#5§:Function;
      
      private var §;N§:Function;
      
      private var §+Y§:Boolean = true;
      
      public function §5!e§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            do
            {
               this.§8!x§ = param1;
               do
               {
                  this.§'!]§ = param2;
               }
               while(!_loc4_);
               
            }
            while(_loc3_);
            
         }
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §""%§() : String
      {
         return this.§8!x§;
      }
      
      public function §%!;§() : Function
      {
         return this.§#5§;
      }
      
      public function §'q§() : Function
      {
         return this.§;N§;
      }
      
      public function §&"6§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(this.§+Y§)
            {
               if(!_loc3_)
               {
                  this.§#5§.call(null,param1);
               }
            }
         }
      }
      
      public function §,!B§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§+Y§)
            {
               if(_loc2_ || _loc3_)
               {
                  addr28:
                  this.§;N§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §4!L§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§#5§ = param1;
            do
            {
               this.§;N§ = param2;
            }
            while(!_loc4_);
            
         }
      }
      
      public function §=!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+Y§ = false;
         }
      }
      
      public function §<Y§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§+Y§ = true;
         }
      }
   }
}
