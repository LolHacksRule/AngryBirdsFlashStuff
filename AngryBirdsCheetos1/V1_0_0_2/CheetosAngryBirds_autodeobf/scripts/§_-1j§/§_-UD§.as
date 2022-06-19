package §_-1j§
{
   import §_-A§.§_-KQ§;
   import §_-ab§.§_-IP§;
   import §_-ob§.§_-xw§;
   import §_-w8§.§_-S6§;
   import flash.display.MovieClip;
   
   public class §_-UD§ extends §_-IP§
   {
       
      
      private var §_-6Z§:§_-xw§;
      
      public function §_-UD§(param1:XML, param2:§_-IP§, param3:§_-S6§, param4:§_-xw§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§_-6Z§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-KQ§) : void
      {
         this.§_-6Z§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
