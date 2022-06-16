package § "C§
{
   import §6o§.§+!k§;
   
   public class §<r§
   {
       
      
      private var §2J§:String;
      
      private var §&"F§:Vector.<Function>;
      
      private var §3o§:Boolean;
      
      public function §<r§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§2J§ = param1;
         this.§3o§ = param3;
         if(param2 != null)
         {
            §+!k§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §]`§() : String
      {
         return this.§2J§;
      }
      
      public function §@S§(param1:Boolean) : void
      {
         this.§3o§ = param1;
      }
      
      public function §7!i§() : Boolean
      {
         return this.§3o§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§&"F§ == null)
         {
            this.§&"F§ = new Vector.<Function>();
         }
         if(this.§&"F§.indexOf(param1) == -1)
         {
            this.§&"F§.push(param1);
         }
      }
      
      public function §[">§(param1:Function) : void
      {
         if(this.§&"F§.indexOf(param1) > -1)
         {
            this.§&"F§.splice(this.§&"F§.indexOf(param1),1);
         }
      }
      
      public function §6^§() : Vector.<Function>
      {
         return this.§&"F§;
      }
   }
}
