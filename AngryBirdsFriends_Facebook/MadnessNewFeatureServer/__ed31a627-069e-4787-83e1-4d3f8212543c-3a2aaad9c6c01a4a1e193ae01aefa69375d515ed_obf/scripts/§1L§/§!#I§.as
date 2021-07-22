package §1L§
{
   public class §!#I§
   {
       
      
      private var §&"§:Number;
      
      private var §switch§:String;
      
      private var §[!X§:Function;
      
      private var §`S§:Function;
      
      private var §'#y§:Boolean = true;
      
      public function §!#I§(param1:String, param2:Number)
      {
         super();
         this.§switch§ = param1;
         this.§&"§ = param2;
      }
      
      public function sendRequest(param1:String, param2:Object) : void
      {
      }
      
      public function closeConnection() : void
      {
      }
      
      public function §-"k§() : String
      {
         return this.§switch§;
      }
      
      public function §7o§() : Function
      {
         return this.§[!X§;
      }
      
      public function §82§() : Function
      {
         return this.§`S§;
      }
      
      public function §#"g§(param1:Object) : void
      {
         if(this.§'#y§)
         {
            this.§[!X§.call(null,param1);
         }
      }
      
      public function §&#x§(param1:Object) : void
      {
         if(this.§'#y§)
         {
            this.§`S§.call(null,param1);
         }
      }
      
      public function §9f§(param1:Function, param2:Function = null) : void
      {
         this.§[!X§ = param1;
         this.§`S§ = param2;
      }
      
      public function §?#F§() : void
      {
         this.§'#y§ = false;
      }
      
      public function §4-§() : void
      {
         this.§'#y§ = true;
      }
   }
}
