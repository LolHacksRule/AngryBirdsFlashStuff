package §2Q§
{
   import §&8§.§<O§;
   import §+!8§.§;A§;
   import §7L§.§9I§;
   import §[]§.§`!`§;
   import flash.display.MovieClip;
   
   public class §26§ extends §`!`§
   {
       
      
      private var §0!F§:§;A§;
      
      public function §26§(param1:XML, param2:§`!`§, param3:§<O§, param4:§;A§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§0!F§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§9I§) : void
      {
         this.§0!F§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
