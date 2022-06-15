package § " §
{
   import §-!+§.§ 7§;
   import flash.events.Event;
   
   public class §?!e§ extends §2!!§
   {
       
      
      public function §?!e§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §%" § = param4 = param4 || §+!p§.§'"6§;
         §"S§ = param1;
         §+e§ = § 7§.§+!z§ == param1;
         §,!K§(param1,param2,param3);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §3!"§(§#!j§).§^!6§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §3!"§(§#!j§).dispose();
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§#!j§)
         {
            if(§#!j§ is §3!"§)
            {
               §3!"§(§#!j§).dispose();
            }
         }
         §?!Y§ = true;
         §#!j§ = new §3!"§(param1,§%" §,true);
         §#!j§.visible = true;
         addChild(§#!j§);
         §3!"§(§#!j§).§^!6§();
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(§#!j§)
         {
            §#!j§.visible = false;
         }
      }
   }
}
