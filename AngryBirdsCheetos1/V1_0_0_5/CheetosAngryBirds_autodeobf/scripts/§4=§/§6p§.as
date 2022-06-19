package §4=§
{
   import §'G§.§%!%§;
   import §-M§.§3!6§;
   import §-V§.§@R§;
   import §<!U§.§]u§;
   import flash.display.MovieClip;
   
   public class §6p§ extends §%!%§
   {
       
      
      private var §0o§:§]u§;
      
      public function §6p§(param1:XML, param2:§%!%§, param3:§3!6§, param4:§]u§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§0o§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§@R§) : void
      {
         this.§0o§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
