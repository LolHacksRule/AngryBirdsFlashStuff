package §4!W§
{
   public class §?!S§
   {
       
      
      private var §%V§:Number;
      
      private var §8!Z§:String;
      
      private var §9!2§:Function;
      
      private var §^!4§:Function;
      
      private var §3+§:Boolean = true;
      
      public function §?!S§(param1:String, param2:Number)
      {
         super();
         this.§8!Z§ = param1;
         this.§%V§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §@;§() : String
      {
         return this.§8!Z§;
      }
      
      public function §0w§() : Function
      {
         return this.§9!2§;
      }
      
      public function §2!_§() : Function
      {
         return this.§^!4§;
      }
      
      public function §0V§(param1:Object) : void
      {
         if(this.§3+§)
         {
            this.§9!2§.call(null,param1);
         }
      }
      
      public function §+o§(param1:Object) : void
      {
         if(this.§3+§)
         {
            this.§^!4§.call(null,param1);
         }
      }
      
      public function §5<§(param1:Function, param2:Function = null) : void
      {
         this.§9!2§ = param1;
         this.§^!4§ = param2;
      }
      
      public function §;!R§() : void
      {
         this.§3+§ = false;
      }
      
      public function §49§() : void
      {
         this.§3+§ = true;
      }
   }
}
