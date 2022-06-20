package §@#b§
{
   import §,#e§.Sprite;
   import §4"Y§.§'#x§;
   
   public class §"!Z§ extends §6$,§
   {
       
      
      private var §`t§:§=$;§;
      
      private var §2Q§:Boolean;
      
      public function §"!Z§(param1:Sprite, param2:§=$;§, param3:§'#x§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§`t§ = param2;
         this.§2Q§ = param3.visible;
      }
      
      override protected function onStart() : void
      {
         this.§`t§.setVisibility(this.§2Q§);
         §+$D§();
      }
   }
}
