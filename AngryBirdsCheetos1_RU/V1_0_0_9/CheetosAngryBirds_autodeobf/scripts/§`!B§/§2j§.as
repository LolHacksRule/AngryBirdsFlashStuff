package §`!B§
{
   public class §2j§
   {
       
      
      private var §>!?§:Vector.<§4!I§>;
      
      public function §2j§()
      {
         super();
         this.§>!?§ = new Vector.<§4!I§>();
      }
      
      public function addFrame(param1:§4!I§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§>!?§.push(param1);
      }
      
      public function getFrame(param1:int) : §4!I§
      {
         if(param1 >= this.§>!?§.length)
         {
            param1 = this.§>!?§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§>!?§.length)
         {
            return null;
         }
         return this.§>!?§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§>!?§.length;
      }
      
      public function getSubAnimation(param1:String) : §2j§
      {
         return null;
      }
   }
}
