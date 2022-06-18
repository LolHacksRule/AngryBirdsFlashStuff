package §=2§
{
   import §?!8§.§2>§;
   
   public class §9!E§
   {
       
      
      private var §>!1§:String;
      
      private var §2k§:Vector.<Function>;
      
      private var §@N§:Boolean;
      
      public function §9!E§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§>!1§ = param1;
         this.§@N§ = param3;
         if(param2 != null)
         {
            §2>§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §7s§() : String
      {
         return this.§>!1§;
      }
      
      public function §%!"§(param1:Boolean) : void
      {
         this.§@N§ = param1;
      }
      
      public function §8$§() : Boolean
      {
         return this.§@N§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2k§ == null)
         {
            this.§2k§ = new Vector.<Function>();
         }
         if(this.§2k§.indexOf(param1) == -1)
         {
            this.§2k§.push(param1);
         }
      }
      
      public function §8G§(param1:Function) : void
      {
         if(this.§2k§.indexOf(param1) > -1)
         {
            this.§2k§.splice(this.§2k§.indexOf(param1),1);
         }
      }
      
      public function §`!,§() : Vector.<Function>
      {
         return this.§2k§;
      }
   }
}
