package §=u§
{
   import §'+§.§1u§;
   
   public class §>!,§
   {
       
      
      private var §5]§:String;
      
      private var §9!N§:Vector.<Function>;
      
      private var §'!5§:Boolean;
      
      public function §>!,§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§5]§ = param1;
         this.§'!5§ = param3;
         if(param2 != null)
         {
            §1u§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §,-§() : String
      {
         return this.§5]§;
      }
      
      public function §6[§(param1:Boolean) : void
      {
         this.§'!5§ = param1;
      }
      
      public function §?!=§() : Boolean
      {
         return this.§'!5§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§9!N§ == null)
         {
            this.§9!N§ = new Vector.<Function>();
         }
         if(this.§9!N§.indexOf(param1) == -1)
         {
            this.§9!N§.push(param1);
         }
      }
      
      public function §"!a§(param1:Function) : void
      {
         if(this.§9!N§.indexOf(param1) > -1)
         {
            this.§9!N§.splice(this.§9!N§.indexOf(param1),1);
         }
      }
      
      public function §+!&§() : Vector.<Function>
      {
         return this.§9!N§;
      }
   }
}
