package §6! §
{
   import §=E§.§[[§;
   import flash.events.Event;
   
   public class §1!3§ extends §<"#§
   {
       
      
      public function §1!3§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         §<!B§ = param4 = param4 || §@!k§.§8v§;
         §&"7§ = param1;
         §8W§ = §[[§.§+"L§ == param1;
         §[!a§(param1,param2,param3);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §<">§(§+W§).§=!O§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §<">§(§+W§).dispose();
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(§+W§)
         {
            if(§+W§ is §<">§)
            {
               §<">§(§+W§).dispose();
            }
         }
         §9Q§ = true;
         §+W§ = new §<">§(param1,§<!B§,true);
         §+W§.visible = true;
         addChild(§+W§);
         §<">§(§+W§).§=!O§();
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(§+W§)
         {
            §+W§.visible = false;
         }
      }
   }
}
