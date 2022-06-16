package §8§#8
{
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §6#?§ extends § "m§
   {
      
      public static const §?#§:String = "idleState";
      
      public static const §7!S§:String = "happyState";
      
      public static const §&#o§:String = "sleepyState";
      
      public static const §9"N§:String = "sleepState";
      
      public static const §8!%§:String = "nervousState";
      
      public static const §3"p§:String = "relievedState";
      
      public static const § each§:String = "damagedState";
      
      public static const §,#&§:String = "freezeState";
      
      public static const §<#]§:String = "sneezeState";
      
      public static const §4!4§:String = "eatingState";
       
      
      public function §6#?§(param1:§0$2§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeImage() : void
      {
         §<X§ = new Sprite();
         super.initializeImage();
      }
      
      public function §6#U§() : Sprite
      {
         return §<X§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§0$2§ = §&n§.getSubAnimation(param1);
         if(§#"_§ && §#"_§.name == _loc3_.name)
         {
            return;
         }
         §8@§(param2);
         §#"_§ = _loc3_;
         §4!O§ = true;
         if(§#"_§)
         {
            _loc4_ = 0;
            if(param1 != §&n§.defaultSubAnimationName)
            {
               _loc5_ = §#"_§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§-!G§)
         {
            if(§;w§)
            {
               §;w§.playSound(§-!G§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §^$7§ = param1;
         return false;
      }
   }
}
