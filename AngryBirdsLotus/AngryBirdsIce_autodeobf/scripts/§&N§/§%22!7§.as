package §&N§
{
   import §;8§.§3f§;
   
   public class §"!7§
   {
       
      
      private var §3[§:String;
      
      private var §[O§:Vector.<Function>;
      
      private var §'z§:Boolean;
      
      public function §"!7§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§3[§ = param1;
         this.§'z§ = param3;
         if(param2 != null)
         {
            §3f§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §2m§() : String
      {
         return this.§3[§;
      }
      
      public function §"c§(param1:Boolean) : void
      {
         this.§'z§ = param1;
      }
      
      public function §9N§() : Boolean
      {
         return this.§'z§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§[O§ == null)
         {
            this.§[O§ = new Vector.<Function>();
         }
         if(this.§[O§.indexOf(param1) == -1)
         {
            this.§[O§.push(param1);
         }
      }
      
      public function §2&§(param1:Function) : void
      {
         if(this.§[O§.indexOf(param1) > -1)
         {
            this.§[O§.splice(this.§[O§.indexOf(param1),1);
         }
      }
      
      public function § !"§() : Vector.<Function>
      {
         return this.§[O§;
      }
   }
}
