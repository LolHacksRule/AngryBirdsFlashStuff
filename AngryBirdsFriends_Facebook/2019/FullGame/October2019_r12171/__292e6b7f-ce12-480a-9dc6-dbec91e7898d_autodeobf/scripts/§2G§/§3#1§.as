package §2G§
{
   import §+W§.§<§;
   import flash.events.Event;
   
   public class §3#1§ extends §?$3§
   {
       
      
      private var §4!Q§:Boolean;
      
      public function §3#1§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false)
      {
         this.§4!Q§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §]#`§ = param3 = param3 || §?!s§.§'!n§;
         §5"U§ = param1;
         §4!<§ = param4;
         §8!W§ = §<#8§.§#f§ == param1;
         §,!x§(param2);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §]#A§(§-!2§).§<e§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §]#A§(§-!2§).dispose();
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§-!2§)
         {
            if(§-!2§ is §]#A§)
            {
               §]#A§(§-!2§).dispose();
            }
         }
         §@#C§ = true;
         §-!2§ = new §]#A§(param1,§]#`§,this.§4!Q§);
         §-!2§.visible = true;
         addChild(§-!2§);
         §]#A§(§-!2§).§<e§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         if(§-!2§)
         {
            §-!2§.visible = false;
         }
      }
   }
}
