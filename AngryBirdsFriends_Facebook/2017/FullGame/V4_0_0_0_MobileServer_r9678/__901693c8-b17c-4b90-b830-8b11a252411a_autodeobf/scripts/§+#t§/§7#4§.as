package §+#t§
{
   import §1#=§.§'b§;
   import flash.events.Event;
   
   public class §7#4§ extends §-"3§
   {
       
      
      private var §7"v§:Boolean;
      
      public function §7#4§(param1:String, param2:String, param3:Boolean = false, param4:String = null, param5:Boolean = false)
      {
         this.§7"v§ = param5;
         super(param1,param2,param3,param4);
      }
      
      override protected function initProfile(param1:String, param2:String, param3:String = null, param4:String = "") : void
      {
         §8#=§ = param3 = param3 || §5V§.§1$$§;
         §[#n§ = param1;
         §%!3§ = param4;
         §<!G§ = §'b§.§4#;§ == param1;
         §1!v§(param2);
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         §>=§(§8!m§).§%g§();
      }
      
      override protected function onRemovedFromStage(param1:Event) : void
      {
         §>=§(§8!m§).dispose();
      }
      
      override protected function createAvatar(param1:String) : void
      {
         if(§8!m§)
         {
            if(§8!m§ is §>=§)
            {
               §>=§(§8!m§).dispose();
            }
         }
         §+#=§ = true;
         §8!m§ = new §>=§(param1,§8#=§,this.§7"v§);
         §8!m§.visible = true;
         addChild(§8!m§);
         §>=§(§8!m§).§%g§();
      }
      
      override protected function createFacebookProfile(param1:Boolean = false) : void
      {
         if(§8!m§)
         {
            §8!m§.visible = false;
         }
      }
   }
}
