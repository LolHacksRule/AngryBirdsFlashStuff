package §>!5§
{
   import §&!v§.Sprite;
   import §7!j§.§8#B§;
   
   public class §##$§ extends §!;§
   {
      
      public static const § #E§:String = "idleState";
      
      public static const §?2§:String = "happyState";
      
      public static const §[# §:String = "sleepyState";
      
      public static const §%#a§:String = "sleepState";
      
      public static const §&g§:String = "nervousState";
      
      public static const § u§:String = "relievedState";
      
      public static const § #5§:String = "damagedState";
      
      public static const §!!h§:String = "freezeState";
      
      public static const §-O§:String = "sneezeState";
      
      public static const §8"g§:String = "eatingState";
       
      
      public function §##$§(param1:§8#B§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeImage() : void
      {
         §2"n§ = new Sprite();
         super.initializeImage();
      }
      
      public function §]#9§() : Sprite
      {
         return §2"n§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§8#B§ = § @§.getSubAnimation(param1);
         if(§5"7§ && §5"7§.name == _loc3_.name)
         {
            return;
         }
         §<#d§(param2);
         §5"7§ = _loc3_;
         §]#h§ = true;
         if(§5"7§)
         {
            _loc4_ = 0;
            if(param1 != § @§.defaultSubAnimationName)
            {
               _loc5_ = §5"7§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§`$"§)
         {
            if(§?"N§)
            {
               §?"N§.playSound(§`$"§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §##_§ = param1;
         return false;
      }
   }
}
