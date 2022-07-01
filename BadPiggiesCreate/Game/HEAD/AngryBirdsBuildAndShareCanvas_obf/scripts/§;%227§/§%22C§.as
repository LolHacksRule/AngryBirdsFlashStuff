package §;"7§
{
   import flash.utils.Dictionary;
   
   public class §"C§ extends §"!B§
   {
       
      
      private var §%f§:Dictionary;
      
      private var §-d§:§"!B§;
      
      public function §"C§()
      {
         this.§%f§ = new Dictionary();
         super();
      }
      
      public function §6k§(param1:String, param2:§"!B§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§-d§)
         {
            this.§-d§ = param2;
         }
         this.§%f§[param1] = param2;
      }
      
      override public function addFrame(param1:§+!I§) : void
      {
         this.§-d§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §+!I§
      {
         return this.§-d§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§-d§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §"!B§
      {
         if(this.§%f§[param1])
         {
            return this.§%f§[param1];
         }
         return this.§-d§;
      }
   }
}
