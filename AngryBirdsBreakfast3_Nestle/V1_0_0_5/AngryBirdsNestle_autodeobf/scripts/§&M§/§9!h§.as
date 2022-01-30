package §&M§
{
   import §0!$§.§#!-§;
   
   public class §9!h§
   {
       
      
      private var §=!u§:String;
      
      private var §1^§:Vector.<Function>;
      
      private var §?!>§:Boolean;
      
      public function §9!h§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§=!u§ = param1;
         this.§?!>§ = param3;
         if(param2 != null)
         {
            §#!-§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function § ^§() : String
      {
         return this.§=!u§;
      }
      
      public function §6T§(param1:Boolean) : void
      {
         this.§?!>§ = param1;
      }
      
      public function §%x§() : Boolean
      {
         return this.§?!>§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§1^§ == null)
         {
            this.§1^§ = new Vector.<Function>();
         }
         if(this.§1^§.indexOf(param1) == -1)
         {
            this.§1^§.push(param1);
         }
      }
      
      public function §@!A§(param1:Function) : void
      {
         if(this.§1^§.indexOf(param1) > -1)
         {
            this.§1^§.splice(this.§1^§.indexOf(param1),1);
         }
      }
      
      public function §^!Y§() : Vector.<Function>
      {
         return this.§1^§;
      }
   }
}
