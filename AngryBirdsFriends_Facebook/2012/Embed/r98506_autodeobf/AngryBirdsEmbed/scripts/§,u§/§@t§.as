package §,u§
{
   import §-p§.§&2§;
   
   public class §@t§
   {
       
      
      private var §'§:String;
      
      private var §5y§:Vector.<Function>;
      
      private var §@!8§:Boolean;
      
      public function §@t§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§'§ = param1;
         this.§@!8§ = param3;
         if(param2 != null)
         {
            §&2§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §=!#§() : String
      {
         return this.§'§;
      }
      
      public function §7=§(param1:Boolean) : void
      {
         this.§@!8§ = param1;
      }
      
      public function §4!+§() : Boolean
      {
         return this.§@!8§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§5y§ == null)
         {
            this.§5y§ = new Vector.<Function>();
         }
         if(this.§5y§.indexOf(param1) == -1)
         {
            this.§5y§.push(param1);
         }
      }
      
      public function §13§(param1:Function) : void
      {
         if(this.§5y§.indexOf(param1) > -1)
         {
            this.§5y§.splice(this.§5y§.indexOf(param1),1);
         }
      }
      
      public function §!!3§() : Vector.<Function>
      {
         return this.§5y§;
      }
   }
}
