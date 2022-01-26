package §^L§
{
   import §!!S§.§^P§;
   import §'Q§.§=!R§;
   import §3!M§.§7^§;
   import §`B§.§-Z§;
   import flash.display.MovieClip;
   
   public class §-G§ extends §7^§
   {
       
      
      private var §+B§:§=!R§;
      
      public function §-G§(param1:XML, param2:§7^§, param3:§-Z§, param4:§=!R§, param5:MovieClip = null)
      {
         super(param1,param2,param3,param5);
         this.§+B§ = param4;
      }
      
      override public function containerEventOccured(param1:int, param2:String, param3:§^P§) : void
      {
         this.§+B§.uiInteractionHandler(param1,param2,param3);
      }
   }
}
