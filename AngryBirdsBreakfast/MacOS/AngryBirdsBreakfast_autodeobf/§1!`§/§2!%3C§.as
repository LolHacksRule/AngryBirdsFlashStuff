package §1!`§
{
   import each.§!!'§;
   
   public class §2!<§
   {
       
      
      private var §5S§:String;
      
      private var §7!n§:Vector.<Function>;
      
      private var §79§:Boolean;
      
      public function §2!<§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§5S§ = param1;
         this.§79§ = param3;
         if(param2 != null)
         {
            §!!'§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §0" §() : String
      {
         return this.§5S§;
      }
      
      public function §!W§(param1:Boolean) : void
      {
         this.§79§ = param1;
      }
      
      public function §4!E§() : Boolean
      {
         return this.§79§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§7!n§ == null)
         {
            this.§7!n§ = new Vector.<Function>();
         }
         if(this.§7!n§.indexOf(param1) == -1)
         {
            this.§7!n§.push(param1);
         }
      }
      
      public function §;!A§(param1:Function) : void
      {
         if(this.§7!n§.indexOf(param1) > -1)
         {
            this.§7!n§.splice(this.§7!n§.indexOf(param1),1);
         }
      }
      
      public function §7!+§() : Vector.<Function>
      {
         return this.§7!n§;
      }
   }
}
