package §%O§
{
   public class §6?§
   {
       
      
      private var §<z§:Vector.<§=I§>;
      
      public function §6?§()
      {
         super();
         this.§<z§ = new Vector.<§=I§>();
      }
      
      public function addFrame(param1:§=I§) : void
      {
         if(param1 == null)
         {
            throw new Error("Trying to add a null frame");
         }
         this.§<z§.push(param1);
      }
      
      public function getFrame(param1:int) : §=I§
      {
         if(param1 >= this.§<z§.length)
         {
            param1 = this.§<z§.length - 1;
         }
         if(param1 < 0 || param1 >= this.§<z§.length)
         {
            return null;
         }
         return this.§<z§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§<z§.length;
      }
      
      public function getSubAnimation(param1:String) : §6?§
      {
         return null;
      }
   }
}
