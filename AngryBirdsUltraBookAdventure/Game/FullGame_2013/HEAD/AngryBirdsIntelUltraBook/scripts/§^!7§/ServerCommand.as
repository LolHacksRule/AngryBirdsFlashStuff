package §^!7§
{
   import §<u§.Log;
   
   public class ServerCommand
   {
       
      
      private var §0!;§:String;
      
      private var §[^§:Vector.<Function>;
      
      private var §>"§:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§0!;§ = param1;
         this.§>"§ = param3;
         if(param2 != null)
         {
            Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §#S§() : String
      {
         return this.§0!;§;
      }
      
      public function §1!g§(param1:Boolean) : void
      {
         this.§>"§ = param1;
      }
      
      public function §;!I§() : Boolean
      {
         return this.§>"§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§[^§ == null)
         {
            this.§[^§ = new Vector.<Function>();
         }
         if(this.§[^§.indexOf(param1) == -1)
         {
            this.§[^§.push(param1);
         }
      }
      
      public function §>!X§(param1:Function) : void
      {
         if(this.§[^§.indexOf(param1) > -1)
         {
            this.§[^§.splice(this.§[^§.indexOf(param1),1);
         }
      }
      
      public function §6z§() : Vector.<Function>
      {
         return this.§[^§;
      }
   }
}
