package §]8§
{
   import §!6§.§3!5§;
   
   public class §[!P§
   {
       
      
      private var §!E§:String;
      
      private var §"g§:Vector.<Function>;
      
      private var §;J§:Boolean;
      
      public function §[!P§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§!E§ = param1;
         this.§;J§ = param3;
         if(param2 != null)
         {
            §3!5§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §+"§() : String
      {
         return this.§!E§;
      }
      
      public function §#!O§(param1:Boolean) : void
      {
         this.§;J§ = param1;
      }
      
      public function § K§() : Boolean
      {
         return this.§;J§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§"g§ == null)
         {
            this.§"g§ = new Vector.<Function>();
         }
         if(this.§"g§.indexOf(param1) == -1)
         {
            this.§"g§.push(param1);
         }
      }
      
      public function §3_§(param1:Function) : void
      {
         if(this.§"g§.indexOf(param1) > -1)
         {
            this.§"g§.splice(this.§"g§.indexOf(param1),1);
         }
      }
      
      public function § !7§() : Vector.<Function>
      {
         return this.§"g§;
      }
   }
}
