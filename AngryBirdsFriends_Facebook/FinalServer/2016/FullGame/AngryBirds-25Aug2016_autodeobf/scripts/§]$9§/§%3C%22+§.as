package §]$9§
{
   import §!x§.§4"d§;
   
   public class §<"+§
   {
       
      
      private var §-6§:String;
      
      private var §3#k§:Vector.<Function>;
      
      private var §^g§:Boolean;
      
      public function §<"+§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§-6§ = param1;
         this.§^g§ = param3;
         if(param2 != null)
         {
            §4"d§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §#!7§() : String
      {
         return this.§-6§;
      }
      
      public function §,8§(param1:Boolean) : void
      {
         this.§^g§ = param1;
      }
      
      public function §#B§() : Boolean
      {
         return this.§^g§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3#k§ == null)
         {
            this.§3#k§ = new Vector.<Function>();
         }
         if(this.§3#k§.indexOf(param1) == -1)
         {
            this.§3#k§.push(param1);
         }
      }
      
      public function §5!3§(param1:Function) : void
      {
         if(this.§3#k§.indexOf(param1) > -1)
         {
            this.§3#k§.splice(this.§3#k§.indexOf(param1),1);
         }
      }
      
      public function §>i§() : Vector.<Function>
      {
         return this.§3#k§;
      }
   }
}
