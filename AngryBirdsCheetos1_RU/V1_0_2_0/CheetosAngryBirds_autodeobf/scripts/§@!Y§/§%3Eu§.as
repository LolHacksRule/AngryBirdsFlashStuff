package §@!Y§
{
   public class §>u§
   {
       
      
      private var §&![§:Number;
      
      private var §5!X§:String;
      
      private var §;!O§:Function;
      
      private var §`!&§:Function;
      
      private var §?r§:Boolean = true;
      
      public function §>u§(param1:String, param2:Number)
      {
         super();
         this.§5!X§ = param1;
         this.§&![§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §4!J§() : String
      {
         return this.§5!X§;
      }
      
      public function §=!%§() : Function
      {
         return this.§;!O§;
      }
      
      public function §'h§() : Function
      {
         return this.§`!&§;
      }
      
      public function §]t§(param1:Object) : void
      {
         if(this.§?r§)
         {
            this.§;!O§.call(null,param1);
         }
      }
      
      public function §5V§(param1:Object) : void
      {
         if(this.§?r§)
         {
            this.§`!&§.call(null,param1);
         }
      }
      
      public function §1E§(param1:Function, param2:Function = null) : void
      {
         this.§;!O§ = param1;
         this.§`!&§ = param2;
      }
      
      public function §4!'§() : void
      {
         this.§?r§ = false;
      }
      
      public function §"U§() : void
      {
         this.§?r§ = true;
      }
   }
}
