package §3@§
{
   public class §+!W§
   {
       
      
      private var §`Z§:Number;
      
      private var §,!-§:String;
      
      private var §]]§:Function;
      
      private var §>a§:Function;
      
      private var §^#§:Boolean = true;
      
      public function §+!W§(param1:String, param2:Number)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§,!-§ = param1;
            do
            {
               this.§`Z§ = param2;
            }
            while(!_loc3_);
            
         }
         while(_loc4_);
         
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §@5§() : String
      {
         return this.§,!-§;
      }
      
      public function §`[§() : Function
      {
         return this.§]]§;
      }
      
      public function §?2§() : Function
      {
         return this.§>a§;
      }
      
      public function §4E§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^#§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§]]§.call(null,param1);
               }
            }
         }
      }
      
      public function §`3§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§^#§)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§>a§.call(null,param1);
               }
            }
         }
      }
      
      public function §;§(param1:Function, param2:Function = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§]]§ = param1;
         }
         do
         {
            this.§>a§ = param2;
         }
         while(_loc4_ && _loc3_);
         
      }
      
      public function §2!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§^#§ = false;
         }
      }
      
      public function §#!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^#§ = true;
         }
      }
   }
}
