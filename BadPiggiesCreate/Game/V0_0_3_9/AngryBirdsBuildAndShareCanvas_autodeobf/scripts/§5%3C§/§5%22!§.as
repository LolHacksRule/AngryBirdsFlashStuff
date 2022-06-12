package §5<§
{
   import §@!;§.§&F§;
   
   public class §5"!§
   {
       
      
      private var §5"$§:String;
      
      private var §0a§:Vector.<Function>;
      
      private var §<!%§:Boolean;
      
      public function §5"!§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§5"$§ = param1;
         this.§<!%§ = param3;
         if(param2 != null)
         {
            §&F§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §5!M§() : String
      {
         return this.§5"$§;
      }
      
      public function §?s§(param1:Boolean) : void
      {
         this.§<!%§ = param1;
      }
      
      public function §;m§() : Boolean
      {
         return this.§<!%§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§0a§ == null)
         {
            this.§0a§ = new Vector.<Function>();
         }
         if(this.§0a§.indexOf(param1) == -1)
         {
            this.§0a§.push(param1);
         }
      }
      
      public function §0!'§(param1:Function) : void
      {
         if(this.§0a§.indexOf(param1) > -1)
         {
            this.§0a§.splice(this.§0a§.indexOf(param1),1);
         }
      }
      
      public function §%!K§() : Vector.<Function>
      {
         return this.§0a§;
      }
   }
}
