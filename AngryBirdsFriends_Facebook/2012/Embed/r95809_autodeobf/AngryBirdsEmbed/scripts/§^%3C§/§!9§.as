package §^<§
{
   import §2x§.§'!@§;
   
   public class §!9§
   {
       
      
      private var § if§:String;
      
      private var §9O§:Vector.<Function>;
      
      private var §&+§:Boolean;
      
      public function §!9§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§ if§ = param1;
         this.§&+§ = param3;
         if(param2 != null)
         {
            §'!@§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function § !9§() : String
      {
         return this.§ if§;
      }
      
      public function §0w§(param1:Boolean) : void
      {
         this.§&+§ = param1;
      }
      
      public function §=8§() : Boolean
      {
         return this.§&+§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§9O§ == null)
         {
            this.§9O§ = new Vector.<Function>();
         }
         if(this.§9O§.indexOf(param1) == -1)
         {
            this.§9O§.push(param1);
         }
      }
      
      public function §3E§(param1:Function) : void
      {
         if(this.§9O§.indexOf(param1) > -1)
         {
            this.§9O§.splice(this.§9O§.indexOf(param1),1);
         }
      }
      
      public function §%!$§() : Vector.<Function>
      {
         return this.§9O§;
      }
   }
}
