package §6!a§
{
   import §6b§.Log;
   
   public class ServerCommand
   {
       
      
      private var §;3§:String;
      
      private var §-H§:Vector.<Function>;
      
      private var §3!#§:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§;3§ = param1;
         this.§3!#§ = param3;
         if(param2 != null)
         {
            Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §-!`§() : String
      {
         return this.§;3§;
      }
      
      public function §4%§(param1:Boolean) : void
      {
         this.§3!#§ = param1;
      }
      
      public function §4Y§() : Boolean
      {
         return this.§3!#§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§-H§ == null)
         {
            this.§-H§ = new Vector.<Function>();
         }
         if(this.§-H§.indexOf(param1) == -1)
         {
            this.§-H§.push(param1);
         }
      }
      
      public function §in§(param1:Function) : void
      {
         if(this.§-H§.indexOf(param1) > -1)
         {
            this.§-H§.splice(this.§-H§.indexOf(param1),1);
         }
      }
      
      public function §"!-§() : Vector.<Function>
      {
         return this.§-H§;
      }
   }
}
