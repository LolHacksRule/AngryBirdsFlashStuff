package § !Z§
{
   public class §0q§
   {
       
      
      private var §%!?§:Number;
      
      private var §,m§:String;
      
      private var §?>§:Function;
      
      private var §6!m§:Function;
      
      private var §4@§:Boolean = true;
      
      public function §0q§(param1:String, param2:Number)
      {
         super();
         this.§,m§ = param1;
         this.§%!?§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §^H§() : String
      {
         return this.§,m§;
      }
      
      public function §@!6§() : Function
      {
         return this.§?>§;
      }
      
      public function §&!b§() : Function
      {
         return this.§6!m§;
      }
      
      public function §?m§(param1:Object) : void
      {
         if(this.§4@§)
         {
            this.§?>§.call(null,param1);
         }
      }
      
      public function §"!M§(param1:Object) : void
      {
         if(this.§4@§)
         {
            this.§6!m§.call(null,param1);
         }
      }
      
      public function §>&§(param1:Function, param2:Function = null) : void
      {
         this.§?>§ = param1;
         this.§6!m§ = param2;
      }
      
      public function §-]§() : void
      {
         this.§4@§ = false;
      }
      
      public function §4w§() : void
      {
         this.§4@§ = true;
      }
   }
}
