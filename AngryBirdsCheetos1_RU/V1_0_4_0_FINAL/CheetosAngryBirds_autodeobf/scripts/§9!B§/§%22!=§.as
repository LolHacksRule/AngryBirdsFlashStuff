package §9!B§
{
   import §2!C§.§1!b§;
   import §2K§.§,!@§;
   import §6!K§.§#![§;
   import §>!D§.§;,§;
   import flash.display.MovieClip;
   
   public class §"!=§ extends §,!@§
   {
       
      
      private var §'!E§:§1!b§;
      
      public function §"!=§(param1:XML, param2:§,!@§, param3:§;,§, param4:§1!b§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§'!E§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§#![§) : void
      {
         this.§'!E§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
