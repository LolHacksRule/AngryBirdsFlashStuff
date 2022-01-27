package §break§
{
   import §-!5§.§5s§;
   
   public class §9D§
   {
       
      
      private var §#"§:String;
      
      private var §=T§:Vector.<Function>;
      
      private var §`+§:Boolean;
      
      public function §9D§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§#"§ = param1;
         this.§`+§ = param3;
         if(param2 != null)
         {
            §5s§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §,!8§() : String
      {
         return this.§#"§;
      }
      
      public function §'j§(param1:Boolean) : void
      {
         this.§`+§ = param1;
      }
      
      public function §^!4§() : Boolean
      {
         return this.§`+§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§=T§ == null)
         {
            this.§=T§ = new Vector.<Function>();
         }
         if(this.§=T§.indexOf(param1) == -1)
         {
            this.§=T§.push(param1);
         }
      }
      
      public function §=[§(param1:Function) : void
      {
         if(this.§=T§.indexOf(param1) > -1)
         {
            this.§=T§.splice(this.§=T§.indexOf(param1),1);
         }
      }
      
      public function §;r§() : Vector.<Function>
      {
         return this.§=T§;
      }
   }
}
