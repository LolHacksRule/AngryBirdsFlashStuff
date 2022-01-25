package §2!&§
{
   public class §<!B§
   {
       
      
      private var §0!&§:Number;
      
      private var §^!!§:String;
      
      private var §@!=§:Function;
      
      private var §0!j§:Function;
      
      private var §#&§:Boolean = true;
      
      public function §<!B§(param1:String, param2:Number)
      {
         super();
         this.§^!!§ = param1;
         this.§0!&§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §8!=§() : String
      {
         return this.§^!!§;
      }
      
      public function §>"%§() : Function
      {
         return this.§@!=§;
      }
      
      public function static() : Function
      {
         return this.§0!j§;
      }
      
      public function §=!#§(param1:Object) : void
      {
         if(this.§#&§)
         {
            this.§@!=§.call(null,param1);
         }
      }
      
      public function §4^§(param1:Object) : void
      {
         if(this.§#&§)
         {
            this.§0!j§.call(null,param1);
         }
      }
      
      public function §9!o§(param1:Function, param2:Function = null) : void
      {
         this.§@!=§ = param1;
         this.§0!j§ = param2;
      }
      
      public function §&"1§() : void
      {
         this.§#&§ = false;
      }
      
      public function § !Y§() : void
      {
         this.§#&§ = true;
      }
   }
}
