package §;c§
{
   public class §6-§
   {
       
      
      private var §>!U§:Number;
      
      private var §2K§:String;
      
      private var §'!a§:Function;
      
      private var §3]§:Function;
      
      private var §;!K§:Boolean = true;
      
      public function §6-§(param1:String, param2:Number)
      {
         super();
         this.§2K§ = param1;
         this.§>!U§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §='§() : String
      {
         return this.§2K§;
      }
      
      public function §[_§() : Function
      {
         return this.§'!a§;
      }
      
      public function §4R§() : Function
      {
         return this.§3]§;
      }
      
      public function §+!2§(param1:Object) : void
      {
         if(this.§;!K§)
         {
            this.§'!a§.call(null,param1);
         }
      }
      
      public function §@t§(param1:Object) : void
      {
         if(this.§;!K§)
         {
            this.§3]§.call(null,param1);
         }
      }
      
      public function §6!U§(param1:Function, param2:Function = null) : void
      {
         this.§'!a§ = param1;
         this.§3]§ = param2;
      }
      
      public function §8!M§() : void
      {
         this.§;!K§ = false;
      }
      
      public function §-H§() : void
      {
         this.§;!K§ = true;
      }
   }
}
