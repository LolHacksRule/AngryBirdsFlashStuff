package §09§
{
   import §=<§.§1+§;
   
   public class §<!j§
   {
       
      
      private var §'!E§:String;
      
      private var §2#§:Vector.<Function>;
      
      private var §+u§:Boolean;
      
      public function §<!j§(param1:String, param2:Function, param3:Boolean = true)
      {
         super();
         this.§'!E§ = param1;
         this.§+u§ = param3;
         if(param2 != null)
         {
            §1+§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
            this.addCallback(param2);
         }
      }
      
      public function §]!;§() : String
      {
         return this.§'!E§;
      }
      
      public function §4!O§(param1:Boolean) : void
      {
         this.§+u§ = param1;
      }
      
      public function §`!-§() : Boolean
      {
         return this.§+u§;
      }
      
      public function addCallback(param1:Function) : void
      {
         if(this.§2#§ == null)
         {
            this.§2#§ = new Vector.<Function>();
         }
         if(this.§2#§.indexOf(param1) == -1)
         {
            this.§2#§.push(param1);
         }
      }
      
      public function §2S§(param1:Function) : void
      {
         if(this.§2#§.indexOf(param1) > -1)
         {
            this.§2#§.splice(this.§2#§.indexOf(param1),1);
         }
      }
      
      public function §>4§() : Vector.<Function>
      {
         return this.§2#§;
      }
   }
}
