package §1o§
{
   import §<m§.§%!l§;
   import flash.events.Event;
   
   public class §8!%§ extends §,!c§
   {
       
      
      public function §8!%§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §30§ = param4 = param4 || §'8§.§"!Y§;
         §<!$§ = param1;
         §-L§ = §%!l§.§]!z§ == param1;
         §=q§(param1,param2,param3);
         if(!§-L§)
         {
         }
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §3"4§(§9!u§).§,!1§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §3"4§(§9!u§).dispose();
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§9!u§)
         {
            if(§9!u§ is §3"4§)
            {
               §3"4§(§9!u§).dispose();
            }
         }
         §"!`§ = true;
         §9!u§ = new §3"4§(param1,§30§,true);
         §9!u§.visible = true;
         addChild(§9!u§);
         §3"4§(§9!u§).§,!1§();
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(§9!u§)
         {
            §9!u§.visible = false;
         }
      }
   }
}
