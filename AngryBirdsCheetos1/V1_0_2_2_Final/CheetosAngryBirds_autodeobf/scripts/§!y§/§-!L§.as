package §!y§
{
   import §%w§.§;s§;
   import §,j§.§1-§;
   import §0F§.§'j§;
   import §1§.§'n§;
   import flash.display.MovieClip;
   
   public class §-!L§ extends §1-§
   {
       
      
      private var §8w§:§;s§;
      
      public function §-!L§(param1:XML, param2:§1-§, param3:§'j§, param4:§;s§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§8w§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§'n§) : void
      {
         this.§8w§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
