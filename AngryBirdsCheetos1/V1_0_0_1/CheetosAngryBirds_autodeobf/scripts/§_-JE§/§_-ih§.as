package §_-JE§
{
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-L8§;
   import §_-fg§.§_-cN§;
   import §_-q6§.§_-ZW§;
   import flash.display.MovieClip;
   
   public class §_-ih§ extends §_-L8§
   {
       
      
      private var §_-Dr§:§_-cN§;
      
      public function §_-ih§(param1:XML, param2:§_-L8§, param3:§_-ZW§, param4:§_-cN§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§_-Dr§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§_-xD§) : void
      {
         this.§_-Dr§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
