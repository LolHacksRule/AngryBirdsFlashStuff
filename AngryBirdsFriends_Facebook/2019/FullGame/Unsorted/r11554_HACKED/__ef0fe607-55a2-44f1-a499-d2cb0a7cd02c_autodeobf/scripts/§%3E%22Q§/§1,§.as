package §>"Q§
{
   import §9#K§.§=#f§;
   
   public class §1,§
   {
       
      
      private var §2"H§:String;
      
      private var §6!i§:Vector.<Function>;
      
      private var §2"X§:Boolean;
      
      public function §1,§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§2"H§ = param1;
         this.§2"X§ = param3;
         if(param2 != null)
         {
            §=#f§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §86§() : String
      {
         return this.§2"H§;
      }
      
      public function §?C§(param1:Boolean) : void
      {
         this.§2"X§ = param1;
      }
      
      public function §6$%§() : Boolean
      {
         return this.§2"X§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§6!i§ == null)
         {
            this.§6!i§ = new Vector.<Function>();
         }
         if(this.§6!i§.indexOf(param1) == -1)
         {
            this.§6!i§.push(param1);
         }
      }
      
      public function §=F§(param1:Function) : void
      {
         if(this.§6!i§.indexOf(param1) > -1)
         {
            this.§6!i§.splice(this.§6!i§.indexOf(param1),1);
         }
      }
      
      public function §&"5§() : Vector.<Function>
      {
         return this.§6!i§;
      }
   }
}
