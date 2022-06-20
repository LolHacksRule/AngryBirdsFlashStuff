package § $%§
{
   public class §##m§
   {
       
      
      private var §-"t§:Number;
      
      private var §&!G§:String;
      
      private var §?6§:Function;
      
      private var §,#c§:Function;
      
      private var §@##§:Boolean = true;
      
      public function §##m§(param1:String, param2:Number)
      {
         super();
         this.§&!G§ = param1;
         this.§-"t§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §2J§() : String
      {
         return this.§&!G§;
      }
      
      public function §6"Y§() : Function
      {
         return this.§?6§;
      }
      
      public function §+!U§() : Function
      {
         return this.§,#c§;
      }
      
      public function §["o§(param1:Object) : void
      {
         if(this.§@##§)
         {
            this.§?6§.call(null,param1);
         }
      }
      
      public function §=!§(param1:Object) : void
      {
         if(this.§@##§)
         {
            this.§,#c§.call(null,param1);
         }
      }
      
      public function §#s§(param1:Function, param2:Function = null) : void
      {
         this.§?6§ = param1;
         this.§,#c§ = param2;
      }
      
      public function §&#>§() : void
      {
         this.§@##§ = false;
      }
      
      public function §]Y§() : void
      {
         this.§@##§ = true;
      }
   }
}
