package §;!;§
{
   public class §@G§
   {
       
      
      private var §'!`§:Number;
      
      private var §7X§:String;
      
      private var §#j§:Function;
      
      private var §6u§:Function;
      
      private var §%b§:Boolean = true;
      
      public function §@G§(param1:String, param2:Number)
      {
         super();
         this.§7X§ = param1;
         this.§'!`§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §7!K§() : String
      {
         return this.§7X§;
      }
      
      public function §"!2§() : Function
      {
         return this.§#j§;
      }
      
      public function §while§() : Function
      {
         return this.§6u§;
      }
      
      public function §3!W§(param1:Object) : void
      {
         if(this.§%b§)
         {
            this.§#j§.call(null,param1);
         }
      }
      
      public function §@&§(param1:Object) : void
      {
         if(this.§%b§)
         {
            this.§6u§.call(null,param1);
         }
      }
      
      public function §9`§(param1:Function, param2:Function = null) : void
      {
         this.§#j§ = param1;
         this.§6u§ = param2;
      }
      
      public function §16§() : void
      {
         this.§%b§ = false;
      }
      
      public function §!W§() : void
      {
         this.§%b§ = true;
      }
   }
}
