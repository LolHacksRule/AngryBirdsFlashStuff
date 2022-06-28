package §8!?§
{
   import flash.utils.Dictionary;
   
   public class AnimationContainer extends Animation
   {
       
      
      private var §@!1§:Dictionary;
      
      private var §%_§:Animation;
      
      public function AnimationContainer()
      {
         this.§@!1§ = new Dictionary();
         super();
      }
      
      public function §[W§(param1:String, param2:Animation) : void
      {
         if(param2 == null)
         {
            throw new Error("Trying to add a null animation");
         }
         if(!this.§%_§)
         {
            this.§%_§ = param2;
         }
         this.§@!1§[param1] = param2;
      }
      
      override public function addFrame(param1:§?!B§) : void
      {
         this.§%_§.addFrame(param1);
      }
      
      override public function getFrame(param1:int) : §?!B§
      {
         return this.§%_§.getFrame(param1);
      }
      
      override public function getFrameCount() : int
      {
         return this.§%_§.getFrameCount();
      }
      
      override public function getSubAnimation(param1:String) : Animation
      {
         if(this.§@!1§[param1])
         {
            return this.§@!1§[param1];
         }
         return this.§%_§;
      }
   }
}
