package §2!&§
{
   import §24§.;
   
   public class §?M§
   {
       
      
      private var §7m§:String;
      
      private var §;9§:Vector.<Function>;
      
      private var §'!K§:Boolean;
      
      public function §?M§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§7m§ = param1;
         this.§'!K§ = param3;
         if(param2 != null)
         {
            §#7§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §0Y§() : String
      {
         return this.§7m§;
      }
      
      public function §!"&§(param1:Boolean) : void
      {
         this.§'!K§ = param1;
      }
      
      public function §5"5§() : Boolean
      {
         return this.§'!K§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§;9§ == null)
         {
            this.§;9§ = new Vector.<Function>();
         }
         if(this.§;9§.indexOf(param1) == -1)
         {
            this.§;9§.push(param1);
         }
      }
      
      public function §[u§(param1:Function) : void
      {
         if(this.§;9§.indexOf(param1) > -1)
         {
            this.§;9§.splice(this.§;9§.indexOf(param1),1);
         }
      }
      
      public function §@!,§() : Vector.<Function>
      {
         return this.§;9§;
      }
   }
}
