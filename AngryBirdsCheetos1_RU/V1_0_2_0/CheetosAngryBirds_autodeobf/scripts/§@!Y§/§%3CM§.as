package §@!Y§
{
   import §=g§.§@!L§;
   
   public class §<M§
   {
       
      
      private var §<!T§:String;
      
      private var §8!C§:Vector.<Function>;
      
      private var §82§:Boolean;
      
      public function §<M§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§<!T§ = param1;
         this.§82§ = param3;
         if(param2 != null)
         {
            §@!L§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §0o§() : String
      {
         return this.§<!T§;
      }
      
      public function §]D§(param1:Boolean) : void
      {
         this.§82§ = param1;
      }
      
      public function §6O§() : Boolean
      {
         return this.§82§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§8!C§ == null)
         {
            this.§8!C§ = new Vector.<Function>();
         }
         if(this.§8!C§.indexOf(param1) == -1)
         {
            this.§8!C§.push(param1);
         }
      }
      
      public function §6m§(param1:Function) : void
      {
         if(this.§8!C§.indexOf(param1) > -1)
         {
            this.§8!C§.splice(this.§8!C§.indexOf(param1),1);
         }
      }
      
      public function §^S§() : Vector.<Function>
      {
         return this.§8!C§;
      }
   }
}
