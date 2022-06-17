package §8"h§
{
   import §#!S§.§^!5§;
   import §#Z§.Sprite;
   
   public class §4#f§ extends §]#H§
   {
       
      
      private var §=!6§:§`#s§;
      
      private var §9$=§:Boolean;
      
      public function §4#f§(param1:Sprite, param2:§`#s§, param3:§^!5§)
      {
         super(param1,param3.trigger,param3.tween,param3.sound,param3.soundVolume,param3.soundLoop);
         this.§=!6§ = param2;
         this.§9$=§ = param3.visible;
      }
      
      override protected function onStart() : void
      {
         this.§=!6§.setVisibility(this.§9$=§);
         §8"%§();
      }
   }
}
