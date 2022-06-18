package §,!A§
{
   import § N§.§]M§;
   
   public class §#!N§
   {
       
      
      private var §[M§:String;
      
      private var §6"§:Vector.<Function>;
      
      private var §%!0§:Boolean;
      
      public function §#!N§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§[M§ = param1;
         this.§%!0§ = param3;
         if(param2 != null)
         {
            §]M§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §<"§() : String
      {
         return this.§[M§;
      }
      
      public function §=Y§(param1:Boolean) : void
      {
         this.§%!0§ = param1;
      }
      
      public function §9!5§() : Boolean
      {
         return this.§%!0§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§6"§ == null)
         {
            this.§6"§ = new Vector.<Function>();
         }
         if(this.§6"§.indexOf(param1) == -1)
         {
            this.§6"§.push(param1);
         }
      }
      
      public function §]!3§(param1:Function) : void
      {
         if(this.§6"§.indexOf(param1) > -1)
         {
            this.§6"§.splice(this.§6"§.indexOf(param1),1);
         }
      }
      
      public function §+!P§() : Vector.<Function>
      {
         return this.§6"§;
      }
   }
}
