package §7X§
{
   import §"x§.§-8§;
   
   public class §1!u§
   {
       
      
      private var §^]§:String;
      
      private var §[X§:Vector.<Function>;
      
      private var §<=§:Boolean;
      
      public function §1!u§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§^]§ = param1;
         this.§<=§ = param3;
         if(param2 != null)
         {
            §-8§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §@t§() : String
      {
         return this.§^]§;
      }
      
      public function §=!3§(param1:Boolean) : void
      {
         this.§<=§ = param1;
      }
      
      public function § g§() : Boolean
      {
         return this.§<=§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§[X§ == null)
         {
            this.§[X§ = new Vector.<Function>();
         }
         if(this.§[X§.indexOf(param1) == -1)
         {
            this.§[X§.push(param1);
         }
      }
      
      public function §&!0§(param1:Function) : void
      {
         if(this.§[X§.indexOf(param1) > -1)
         {
            this.§[X§.splice(this.§[X§.indexOf(param1),1);
         }
      }
      
      public function §^!^§() : Vector.<Function>
      {
         return this.§[X§;
      }
   }
}
