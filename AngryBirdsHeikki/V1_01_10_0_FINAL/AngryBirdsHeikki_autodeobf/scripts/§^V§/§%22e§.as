package §^V§
{
   public class §"e§
   {
       
      
      private var §6!?§:Number;
      
      private var §?9§:String;
      
      private var §8@§:Function;
      
      private var §'k§:Function;
      
      private var §4l§:Boolean = true;
      
      public function §"e§(param1:String, param2:Number)
      {
         super();
         this.§?9§ = param1;
         this.§6!?§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §%!'§() : String
      {
         return this.§?9§;
      }
      
      public function §0-§() : Function
      {
         return this.§8@§;
      }
      
      public function §5V§() : Function
      {
         return this.§'k§;
      }
      
      public function §7'§(param1:Object) : void
      {
         if(this.§4l§)
         {
            this.§8@§.call(null,param1);
         }
      }
      
      public function §[!P§(param1:Object) : void
      {
         if(this.§4l§)
         {
            this.§'k§.call(null,param1);
         }
      }
      
      public function §]!]§(param1:Function, param2:Function = null) : void
      {
         this.§8@§ = param1;
         this.§'k§ = param2;
      }
      
      public function §&,§() : void
      {
         this.§4l§ = false;
      }
      
      public function § !2§() : void
      {
         this.§4l§ = true;
      }
   }
}
