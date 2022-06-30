package §%O§
{
   import flash.utils.Dictionary;
   
   public class §?H§ extends §6?§
   {
       
      
      private var §8!,§:Dictionary;
      
      private var §%!P§:§6?§;
      
      public function §?H§()
      {
         this.§8!,§ = new Dictionary();
         super();
      }
      
      public function §;+§(param1:String, param2:§6?§) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§%!P§)
         {
            this.§%!P§ = param2;
         }
         this.§8!,§[param1] = param2;
      }
      
      override public function addFrame(param1:§=I§) : void
      {
         this.§%!P§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §=I§
      {
         return this.§%!P§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§%!P§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : §6?§
      {
         if(this.§8!,§[param1])
         {
            return this.§8!,§[param1];
         }
         return this.§%!P§;
      }
   }
}
