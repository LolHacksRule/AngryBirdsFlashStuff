package §;f§
{
   import §`K§.§ L§;
   
   public class §+!@§
   {
       
      
      private var §6Z§:String;
      
      private var §>%§:Vector.<Function>;
      
      private var §'!+§:Boolean;
      
      public function §+!@§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§6Z§ = param1;
         this.§'!+§ = param3;
         if(param2 != null)
         {
            § L§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §[U§() : String
      {
         return this.§6Z§;
      }
      
      public function §8>§(param1:Boolean) : void
      {
         this.§'!+§ = param1;
      }
      
      public function §%-§() : Boolean
      {
         return this.§'!+§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§>%§ == null)
         {
            this.§>%§ = new Vector.<Function>();
         }
         if(this.§>%§.indexOf(param1) == -1)
         {
            this.§>%§.push(param1);
         }
      }
      
      public function §=&§(param1:Function) : void
      {
         if(this.§>%§.indexOf(param1) > -1)
         {
            this.§>%§.splice(this.§>%§.indexOf(param1),1);
         }
      }
      
      public function §'!"§() : Vector.<Function>
      {
         return this.§>%§;
      }
   }
}
