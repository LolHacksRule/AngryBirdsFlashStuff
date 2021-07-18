package §+!h§
{
   public class §4"2§
   {
       
      
      private var §!L§:Number;
      
      private var §8c§:String;
      
      private var §5!A§:Function;
      
      private var §0!7§:Function;
      
      private var §+=§:Boolean = true;
      
      public function §4"2§(param1:String, param2:Number)
      {
         super();
         this.§8c§ = param1;
         this.§!L§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §!!,§() : String
      {
         return this.§8c§;
      }
      
      public function §,§() : Function
      {
         return this.§5!A§;
      }
      
      public function §,6§() : Function
      {
         return this.§0!7§;
      }
      
      public function §=!N§(param1:Object) : void
      {
         if(this.§+=§)
         {
            this.§5!A§.call(null,param1);
         }
      }
      
      public function §?g§(param1:Object) : void
      {
         if(this.§+=§)
         {
            this.§0!7§.call(null,param1);
         }
      }
      
      public function §1]§(param1:Function, param2:Function = null) : void
      {
         this.§5!A§ = param1;
         this.§0!7§ = param2;
      }
      
      public function §6"5§() : void
      {
         this.§+=§ = false;
      }
      
      public function §]",§() : void
      {
         this.§+=§ = true;
      }
   }
}
