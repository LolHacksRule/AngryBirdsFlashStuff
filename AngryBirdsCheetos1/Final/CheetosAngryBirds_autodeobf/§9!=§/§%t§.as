package §9!=§
{
   public class §%t§
   {
       
      
      private var §5X§:Number;
      
      private var §`!6§:String;
      
      private var §7!,§:Function;
      
      private var §--§:Function;
      
      private var §9!X§:Boolean = true;
      
      public function §%t§(param1:String, param2:Number)
      {
         super();
         this.§`!6§ = param1;
         this.§5X§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §var §() : String
      {
         return this.§`!6§;
      }
      
      public function §-c§() : Function
      {
         return this.§7!,§;
      }
      
      public function §+!T§() : Function
      {
         return this.§--§;
      }
      
      public function §-1§(param1:Object) : void
      {
         if(this.§9!X§)
         {
            this.§7!,§.call(null,param1);
         }
      }
      
      public function §?9§(param1:Object) : void
      {
         if(this.§9!X§)
         {
            this.§--§.call(null,param1);
         }
      }
      
      public function §0i§(param1:Function, param2:Function = null) : void
      {
         this.§7!,§ = param1;
         this.§--§ = param2;
      }
      
      public function §]V§() : void
      {
         this.§9!X§ = false;
      }
      
      public function § in§() : void
      {
         this.§9!X§ = true;
      }
   }
}
