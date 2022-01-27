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
         super();
         this.§,!-§ = param1;
         this.§`Z§ = param2;
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
         if(this.§^#§)
         {
            this.§]]§.call(null,param1);
         }
      }
      
      public function §`3§(param1:Object) : void
      {
         if(this.§^#§)
         {
            this.§>a§.call(null,param1);
         }
      }
      
      public function §;§(param1:Function, param2:Function = null) : void
      {
         this.§]]§ = param1;
         this.§>a§ = param2;
      }
      
      public function §2!I§() : void
      {
         this.§^#§ = false;
      }
      
      public function §#!_§() : void
      {
         this.§^#§ = true;
      }
   }
}
