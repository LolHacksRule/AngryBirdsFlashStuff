package §9x§
{
   import §3#q§.§+#%§;
   import flash.events.Event;
   
   public class §,"V§ extends § m§
   {
       
      
      private var §1$4§:Boolean;
      
      public function §,"V§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false)
      {
         this.§1$4§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         § 1§ = param3 = param3 || §7",§.§1"0§;
         §'H§ = param1;
         §>!;§ = param4;
         §4$2§ = §+#%§.§!!f§ == param1;
         § $§(param2);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §1#7§(§&J§).§5$!§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §1#7§(§&J§).dispose();
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§&J§)
         {
            if(§&J§ is §1#7§)
            {
               §1#7§(§&J§).dispose();
            }
         }
         § ">§ = true;
         §&J§ = new §1#7§(param1,§ 1§,this.§1$4§);
         §&J§.visible = true;
         addChild(§&J§);
         §1#7§(§&J§).§5$!§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         if(§&J§)
         {
            §&J§.visible = false;
         }
      }
   }
}
