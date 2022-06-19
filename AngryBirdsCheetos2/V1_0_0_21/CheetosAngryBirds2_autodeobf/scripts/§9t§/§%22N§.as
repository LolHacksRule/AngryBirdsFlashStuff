package §9t§
{
   import flash.utils.Dictionary;
   
   public class §"N§ extends §"h§
   {
       
      
      private var §'!I§:Dictionary;
      
      private var §9@§:§"h§;
      
      public function §"N§()
      {
         this.§'!I§ = new Dictionary();
         super();
      }
      
      public function §var §(param1:String, param2:§"h§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§9@§)
         {
            this.§9@§ = param2;
         }
         this.§'!I§[param1] = param2;
      }
      
      override public function addFrame(param1:§35§) : void
      {
         this.§9@§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §35§
      {
         return this.§9@§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§9@§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §"h§
      {
         if(this.§'!I§[param1])
         {
            return this.§'!I§[param1];
         }
         return this.§9@§;
      }
   }
}
