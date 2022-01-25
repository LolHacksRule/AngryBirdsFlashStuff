package §set §
{
   import §<!!§.§-"§;
   
   public class §@!>§
   {
       
      
      private var §1t§:String;
      
      private var §-!5§:Vector.<Function>;
      
      private var §]![§:Boolean;
      
      public function §@!>§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§1t§ = param1;
         this.§]![§ = param3;
         if(param2 != null)
         {
            §-"§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §%o§() : String
      {
         return this.§1t§;
      }
      
      public function §47§(param1:Boolean) : void
      {
         this.§]![§ = param1;
      }
      
      public function §+q§() : Boolean
      {
         return this.§]![§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§-!5§ == null)
         {
            this.§-!5§ = new Vector.<Function>();
         }
         if(this.§-!5§.indexOf(param1) == -1)
         {
            this.§-!5§.push(param1);
         }
      }
      
      public function §8![§(param1:Function) : void
      {
         if(this.§-!5§.indexOf(param1) > -1)
         {
            this.§-!5§.splice(this.§-!5§.indexOf(param1),1);
         }
      }
      
      public function §=U§() : Vector.<Function>
      {
         return this.§-!5§;
      }
   }
}
