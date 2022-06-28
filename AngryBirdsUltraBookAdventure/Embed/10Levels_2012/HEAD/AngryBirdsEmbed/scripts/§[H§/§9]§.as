package §[H§
{
   import §2§.§0!<§;
   
   public class §9]§
   {
       
      
      private var §>!F§:String;
      
      private var §;D§:Vector.<Function>;
      
      private var §4&§:Boolean;
      
      public function §9]§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§>!F§ = param1;
         this.§4&§ = param3;
         if(param2 != null)
         {
            §0!<§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §;m§() : String
      {
         return this.§>!F§;
      }
      
      public function §]y§(param1:Boolean) : void
      {
         this.§4&§ = param1;
      }
      
      public function §case §() : Boolean
      {
         return this.§4&§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;D§ == null)
         {
            this.§;D§ = new Vector.<Function>();
         }
         if(this.§;D§.indexOf(param1) == -1)
         {
            this.§;D§.push(param1);
         }
      }
      
      public function §class§(param1:Function) : void
      {
         if(this.§;D§.indexOf(param1) > -1)
         {
            this.§;D§.splice(this.§;D§.indexOf(param1),1);
         }
      }
      
      public function §1G§() : Vector.<Function>
      {
         return this.§;D§;
      }
   }
}
