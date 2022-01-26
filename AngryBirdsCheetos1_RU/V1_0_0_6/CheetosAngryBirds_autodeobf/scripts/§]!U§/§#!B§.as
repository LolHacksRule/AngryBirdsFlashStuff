package §]!U§
{
   import §%Y§.§,5§;
   import §'!N§.§9!O§;
   import §;!K§.§+!4§;
   import §;[§.§>!^§;
   import flash.display.MovieClip;
   
   public class §#!B§ extends §>!^§
   {
       
      
      private var §5!4§:§,5§;
      
      public function §#!B§(param1:XML, param2:§>!^§, param3:§+!4§, param4:§,5§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§5!4§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§9!O§) : void
      {
         this.§5!4§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
