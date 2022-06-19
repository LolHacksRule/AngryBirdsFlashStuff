package §_-Pa§
{
   import §_-16§.§_-VR§;
   import §_-Eg§.§_-Up§;
   import §_-Xz§.§_-SW§;
   import §_-xL§.§_-1-§;
   import flash.display.MovieClip;
   
   public class §_-qJ§ extends §_-Up§
   {
       
      
      private var §_-PB§:§_-SW§;
      
      public function §_-qJ§(param1:XML, param2:§_-Up§, param3:§_-1-§, param4:§_-SW§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§_-PB§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-VR§) : void
      {
         this.§_-PB§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
