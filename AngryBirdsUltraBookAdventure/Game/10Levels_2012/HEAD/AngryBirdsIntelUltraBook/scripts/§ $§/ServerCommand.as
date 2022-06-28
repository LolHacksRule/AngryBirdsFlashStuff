package § $§
{
   import §'N§.Log;
   
   public class ServerCommand
   {
       
      
      private var §0$§:String;
      
      private var §0?§:Vector.<Function>;
      
      private var §'![§:Boolean;
      
      public function ServerCommand(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§0$§ = param1;
         this.§'![§ = param3;
         if(param2 != null)
         {
            Log.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §<[§() : String
      {
         return this.§0$§;
      }
      
      public function §@!K§(param1:Boolean) : void
      {
         this.§'![§ = param1;
      }
      
      public function §!K§() : Boolean
      {
         return this.§'![§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§0?§ == null)
         {
            this.§0?§ = new Vector.<Function>();
         }
         if(this.§0?§.indexOf(param1) == -1)
         {
            this.§0?§.push(param1);
         }
      }
      
      public function §<!<§(param1:Function) : void
      {
         if(this.§0?§.indexOf(param1) > -1)
         {
            this.§0?§.splice(this.§0?§.indexOf(param1),1);
         }
      }
      
      public function § !#§() : Vector.<Function>
      {
         return this.§0?§;
      }
   }
}
