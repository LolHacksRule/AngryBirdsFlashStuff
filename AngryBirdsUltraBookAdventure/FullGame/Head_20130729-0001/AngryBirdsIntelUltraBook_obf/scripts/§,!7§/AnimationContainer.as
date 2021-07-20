package §,!7§
{
   import flash.utils.Dictionary;
   
   public class AnimationContainer extends Animation
   {
       
      
      private var §%!?§:Dictionary;
      
      private var §00§:Animation;
      
      public function AnimationContainer()
      {
         this.§%!?§ = new Dictionary();
         super();
      }
      
      public function §`,§(param1:String, param2:Animation) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§00§)
         {
            this.§00§ = param2;
         }
         this.§%!?§[param1] = param2;
      }
      
      override public function addFrame(param1:§ H§) : void
      {
         this.§00§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : § H§
      {
         return this.§00§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§00§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : Animation
      {
         if(this.§%!?§[param1])
         {
            return this.§%!?§[param1];
         }
         return this.§00§;
      }
   }
}
