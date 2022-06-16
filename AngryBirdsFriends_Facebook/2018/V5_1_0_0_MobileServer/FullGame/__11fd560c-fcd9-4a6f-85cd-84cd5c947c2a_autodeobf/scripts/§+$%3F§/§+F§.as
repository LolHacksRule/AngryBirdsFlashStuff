package §+$?§
{
   import §8!§.§2"s§;
   import flash.events.Event;
   
   public class §+F§ extends §=#>§
   {
       
      
      private var §#+§:Boolean;
      
      public function §+F§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false)
      {
         this.§#+§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §;!L§ = param3 = param3 || §4!+§.§+"N§;
         §["L§ = param1;
         §90§ = param4;
         §@"U§ = §2"s§.§;"8§ == param1;
         §[$<§(param2);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §=-§(§'!,§).§7f§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §=-§(§'!,§).dispose();
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§'!,§)
         {
            if(§'!,§ is §=-§)
            {
               §=-§(§'!,§).dispose();
            }
         }
         §1!J§ = true;
         §'!,§ = new §=-§(param1,§;!L§,this.§#+§);
         §'!,§.visible = true;
         addChild(§'!,§);
         §=-§(§'!,§).§7f§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         if(§'!,§)
         {
            §'!,§.visible = false;
         }
      }
   }
}
