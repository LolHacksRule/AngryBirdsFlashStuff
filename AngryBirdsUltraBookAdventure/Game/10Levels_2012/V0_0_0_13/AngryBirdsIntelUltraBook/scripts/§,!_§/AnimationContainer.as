package §,!_§
{
   import flash.utils.Dictionary;
   
   public class AnimationContainer extends Animation
   {
       
      
      private var §3!I§:Dictionary;
      
      private var §-!8§:Animation;
      
      public function AnimationContainer()
      {
         this.§3!I§ = new Dictionary();
         super();
      }
      
      public function §+b§(param1:String, param2:Animation) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§-!8§)
         {
            this.§-!8§ = param2;
         }
         this.§3!I§[param1] = param2;
      }
      
      override public function addFrame(param1:§;K§) : void
      {
         this.§-!8§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §;K§
      {
         return this.§-!8§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§-!8§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : Animation
      {
         if(this.§3!I§[param1])
         {
            return this.§3!I§[param1];
         }
         return this.§-!8§;
      }
   }
}
