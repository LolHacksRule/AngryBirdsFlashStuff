package §%!G§
{
   import §9"`§.§-"H§;
   
   public class §4!!§
   {
       
      
      private var §]#5§:String;
      
      private var §,#2§:Vector.<Function>;
      
      private var §,p§:Boolean;
      
      public function §4!!§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§]#5§ = param1;
         this.§,p§ = param3;
         if(param2 != null)
         {
            §-"H§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §-!l§() : String
      {
         return this.§]#5§;
      }
      
      public function §3]§(param1:Boolean) : void
      {
         this.§,p§ = param1;
      }
      
      public function §'#&§() : Boolean
      {
         return this.§,p§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§,#2§ == null)
         {
            this.§,#2§ = new Vector.<Function>();
         }
         if(this.§,#2§.indexOf(param1) == -1)
         {
            this.§,#2§.push(param1);
         }
      }
      
      public function §@"-§(param1:Function) : void
      {
         if(this.§,#2§.indexOf(param1) > -1)
         {
            this.§,#2§.splice(this.§,#2§.indexOf(param1),1);
         }
      }
      
      public function §@!m§() : Vector.<Function>
      {
         return this.§,#2§;
      }
   }
}
