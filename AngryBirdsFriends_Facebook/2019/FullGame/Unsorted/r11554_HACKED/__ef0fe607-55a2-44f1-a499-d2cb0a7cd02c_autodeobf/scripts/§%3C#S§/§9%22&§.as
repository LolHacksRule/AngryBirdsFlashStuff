package §<#S§
{
   import §!6§.Sprite;
   import §'!O§.§#$;§;
   
   public class §9"&§ extends §9H§
   {
       
      
      private var §4!<§:§8#P§;
      
      private var §1!A§:Boolean;
      
      public function §9"&§(param1:Sprite, param2:§8#P§, param3:§#$;§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§4!<§ = param2;
         this.§1!A§ = param3.visible;
      }
      
      override protected function onStart() : void
      {
         this.§4!<§.setVisibility(this.§1!A§);
         §%#_§();
      }
   }
}
