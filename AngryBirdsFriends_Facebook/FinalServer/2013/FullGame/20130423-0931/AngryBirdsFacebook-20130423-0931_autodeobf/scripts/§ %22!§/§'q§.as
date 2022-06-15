package § "!§
{
   import §2!o§.§?j§;
   import flash.events.Event;
   
   public class §'q§ extends § ! §
   {
       
      
      public function §'q§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §'""§ = param4 = param4 || §!"O§.§'"O§;
         §'F§ = param1;
         §3!a§ = §?j§.§1"[§ == param1;
         §@2§(param1,param2,param3);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §]"@§(§`F§).§ "Y§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §]"@§(§`F§).dispose();
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§`F§)
         {
            if(§`F§ is §]"@§)
            {
               §]"@§(§`F§).dispose();
            }
         }
         §]C§ = true;
         §`F§ = new §]"@§(param1,§'""§,true);
         §`F§.visible = true;
         addChild(§`F§);
         §]"@§(§`F§).§ "Y§();
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(§`F§)
         {
            §`F§.visible = false;
         }
      }
   }
}
