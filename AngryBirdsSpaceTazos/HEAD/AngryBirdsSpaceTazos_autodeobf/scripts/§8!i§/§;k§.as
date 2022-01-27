package §8!i§
{
   import §`!w§.§^!$§;
   
   public class §;k§
   {
       
      
      private var §7"@§:String;
      
      private var §3O§:Vector.<Function>;
      
      private var §&Y§:Boolean;
      
      public function §;k§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§7"@§ = param1;
         this.§&Y§ = param3;
         if(param2 != null)
         {
            §^!$§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §,!2§() : String
      {
         return this.§7"@§;
      }
      
      public function §!a§(param1:Boolean) : void
      {
         this.§&Y§ = param1;
      }
      
      public function §^">§() : Boolean
      {
         return this.§&Y§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§3O§ == null)
         {
            this.§3O§ = new Vector.<Function>();
         }
         if(this.§3O§.indexOf(param1) == -1)
         {
            this.§3O§.push(param1);
         }
      }
      
      public function §8"3§(param1:Function) : void
      {
         if(this.§3O§.indexOf(param1) > -1)
         {
            this.§3O§.splice(this.§3O§.indexOf(param1),1);
         }
      }
      
      public function §0!K§() : Vector.<Function>
      {
         return this.§3O§;
      }
   }
}
