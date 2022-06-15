package §?!a§
{
   import §=§.§5$9§;
   import flash.events.Event;
   
   public class §%M§ extends §-=§
   {
       
      
      private var §65§:Boolean;
      
      public function §%M§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false)
      {
         this.§65§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §3$1§ = param3 = param3 || §6#b§.§?^§;
         §1#h§ = param1;
         §?K§ = param4;
         §,##§ = §5$9§.§3"P§ == param1;
         §%a§(param2);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §4!N§(§<!]§).§["t§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §4!N§(§<!]§).dispose();
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§<!]§)
         {
            if(§<!]§ is §4!N§)
            {
               §4!N§(§<!]§).dispose();
            }
         }
         §>n§ = true;
         §<!]§ = new §4!N§(param1,§3$1§,this.§65§);
         §<!]§.visible = true;
         addChild(§<!]§);
         §4!N§(§<!]§).§["t§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         if(§<!]§)
         {
            §<!]§.visible = false;
         }
      }
   }
}
