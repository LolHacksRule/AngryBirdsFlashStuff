package §7X§
{
   public class §!!%§
   {
       
      
      private var §@y§:Number;
      
      private var §^!z§:String;
      
      private var §5O§:Function;
      
      private var §"!I§:Function;
      
      private var §1!]§:Boolean = true;
      
      public function §!!%§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
         }
         do
         {
            this.§^!z§ = param1;
            do
            {
               this.§@y§ = param2;
            }
            while(_loc4_ && param1);
            
         }
         while(!_loc3_);
         
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §&!j§() : String
      {
         return this.§^!z§;
      }
      
      public function §7!q§() : Function
      {
         return this.§5O§;
      }
      
      public function §5!^§() : Function
      {
         return this.§"!I§;
      }
      
      public function §%!1§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§1!]§)
            {
               if(_loc2_ || param1)
               {
                  addr43:
                  this.§5O§.call(null,param1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §`#§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§1!]§)
            {
               if(!_loc2_)
               {
                  this.§"!I§.call(null,param1);
               }
            }
         }
      }
      
      public function §%!@§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§5O§ = param1;
            do
            {
               this.§"!I§ = param2;
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      public function §;l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§1!]§ = false;
         }
      }
      
      public function §,!G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§1!]§ = true;
         }
      }
   }
}
