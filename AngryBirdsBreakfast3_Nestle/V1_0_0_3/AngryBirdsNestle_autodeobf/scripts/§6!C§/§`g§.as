package §6!C§
{
   import §=!7§.§1!7§;
   
   public class §`g§
   {
       
      
      private var §super§:String;
      
      private var §5C§:Vector.<Function>;
      
      private var §]$§:Boolean;
      
      public function §`g§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§super§ = param1;
         this.§]$§ = param3;
         if(param2 != null)
         {
            §1!7§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §`J§() : String
      {
         return this.§super§;
      }
      
      public function §9!?§(param1:Boolean) : void
      {
         this.§]$§ = param1;
      }
      
      public function §@J§() : Boolean
      {
         return this.§]$§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§5C§ == null)
         {
            this.§5C§ = new Vector.<Function>();
         }
         if(this.§5C§.indexOf(param1) == -1)
         {
            this.§5C§.push(param1);
         }
      }
      
      public function §4n§(param1:Function) : void
      {
         if(this.§5C§.indexOf(param1) > -1)
         {
            this.§5C§.splice(this.§5C§.indexOf(param1),1);
         }
      }
      
      public function §]'§() : Vector.<Function>
      {
         return this.§5C§;
      }
   }
}
