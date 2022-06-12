package §6!3§
{
   import §'G§.§;D§;
   import §6#H§.Sprite;
   
   public class §@!b§ extends §0&§
   {
      
      public static const §3!s§:String = "idleState";
      
      public static const §[#2§:String = "happyState";
      
      public static const §8E§:String = "sleepyState";
      
      public static const §&X§:String = "sleepState";
      
      public static const §8"E§:String = "nervousState";
      
      public static const §7#I§:String = "relievedState";
      
      public static const §5"y§:String = "damagedState";
      
      public static const §0n§:String = "freezeState";
      
      public static const §1#U§:String = "sneezeState";
      
      public static const §2#R§:String = "eatingState";
       
      
      public function §@!b§(param1:§;D§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeImage() : void
      {
         §-#;§ = new Sprite();
         super.initializeImage();
      }
      
      public function §;I§() : Sprite
      {
         return §-#;§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§;D§ = §&#N§.getSubAnimation(param1);
         if(§7!a§ && §7!a§.name == _loc3_.name)
         {
            return;
         }
         §]z§(param2);
         §7!a§ = _loc3_;
         §,#p§ = true;
         if(§7!a§)
         {
            _loc4_ = 0;
            if(param1 != §&#N§.defaultSubAnimationName)
            {
               _loc5_ = §7!a§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§[D§)
         {
            if(§>!g§)
            {
               §>!g§.playSound(§[D§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §>#Y§ = param1;
         return false;
      }
   }
}
