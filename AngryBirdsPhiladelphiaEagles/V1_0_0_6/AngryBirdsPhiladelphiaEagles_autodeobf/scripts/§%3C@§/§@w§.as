package §<@§
{
   public class §@w§
   {
       
      
      private var §@V§:Number;
      
      private var §%_§:String;
      
      private var §,!@§:Function;
      
      private var §!r§:Function;
      
      private var §^_§:Boolean = true;
      
      public function §@w§(param1:String, param2:Number)
      {
         super();
         this.§%_§ = param1;
         this.§@V§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §`"§() : String
      {
         return this.§%_§;
      }
      
      public function §8c§() : Function
      {
         return this.§,!@§;
      }
      
      public function §2!2§() : Function
      {
         return this.§!r§;
      }
      
      public function §[@§(param1:Object) : void
      {
         if(this.§^_§)
         {
            this.§,!@§.call(null,param1);
         }
      }
      
      public function §>?§(param1:Object) : void
      {
         if(this.§^_§)
         {
            this.§!r§.call(null,param1);
         }
      }
      
      public function §,v§(param1:Function, param2:Function = null) : void
      {
         this.§,!@§ = param1;
         this.§!r§ = param2;
      }
      
      public function §,!I§() : void
      {
         this.§^_§ = false;
      }
      
      public function §+!§() : void
      {
         this.§^_§ = true;
      }
   }
}
