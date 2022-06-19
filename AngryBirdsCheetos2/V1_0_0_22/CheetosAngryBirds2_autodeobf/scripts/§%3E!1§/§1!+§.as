package §>!1§
{
   import §'!D§.§08§;
   import §5G§.§?,§;
   import §>M§.§<6§;
   import §>P§.§5!§;
   import flash.display.MovieClip;
   
   public class §1!+§ extends §<6§
   {
       
      
      private var § !$§:§?,§;
      
      public function §1!+§(param1:XML, param2:§<6§, param3:§5!§, param4:§?,§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§ !$§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         this.§ !$§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
