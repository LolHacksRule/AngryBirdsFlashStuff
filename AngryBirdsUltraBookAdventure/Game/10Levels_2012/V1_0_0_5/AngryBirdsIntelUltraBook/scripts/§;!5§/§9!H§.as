package §;!5§
{
   public class §9!H§
   {
       
      
      private var §2!q§:Number;
      
      private var §^!!§:String;
      
      private var §8!!§:Function;
      
      private var §<O§:Function;
      
      private var §6g§:Boolean = true;
      
      public function §9!H§(param1:String, param2:Number)
      {
         super();
         this.§^!!§ = param1;
         this.§2!q§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §#!;§() : String
      {
         return this.§^!!§;
      }
      
      public function §&h§() : Function
      {
         return this.§8!!§;
      }
      
      public function §?M§() : Function
      {
         return this.§<O§;
      }
      
      public function §6Y§(param1:Object) : void
      {
         if(this.§6g§)
         {
            this.§8!!§.call(null,param1);
         }
      }
      
      public function §"!6§(param1:Object) : void
      {
         if(this.§6g§)
         {
            this.§<O§.call(null,param1);
         }
      }
      
      public function §@;§(param1:Function, param2:Function = null) : void
      {
         this.§8!!§ = param1;
         this.§<O§ = param2;
      }
      
      public function §97§() : void
      {
         this.§6g§ = false;
      }
      
      public function §!!C§() : void
      {
         this.§6g§ = true;
      }
   }
}
