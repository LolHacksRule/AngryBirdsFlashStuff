package §[#a§
{
   import §9$§.Sprite;
   import §@"§.§`"W§;
   
   public class §5#v§ extends §]#m§
   {
      
      public static const §`"'§:String = "idleState";
      
      public static const §%!J§:String = "happyState";
      
      public static const §;!t§:String = "sleepyState";
      
      public static const §'!4§:String = "sleepState";
      
      public static const §8p§:String = "nervousState";
      
      public static const §1"I§:String = "relievedState";
      
      public static const §;"U§:String = "damagedState";
      
      public static const §2#J§:String = "freezeState";
      
      public static const §]#H§:String = "sneezeState";
      
      public static const §,!G§:String = "eatingState";
       
      
      public function §5#v§(param1:§`"W§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeImage() : void
      {
         §]@§ = new Sprite();
         super.initializeImage();
      }
      
      public function §]!8§() : Sprite
      {
         return §]@§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§`"W§ = §"!c§.getSubAnimation(param1);
         if(§2#>§ && §2#>§.name == _loc3_.name)
         {
            return;
         }
         §["V§(param2);
         §2#>§ = _loc3_;
         §[$-§ = true;
         if(§2#>§)
         {
            _loc4_ = 0;
            if(param1 != §"!c§.defaultSubAnimationName)
            {
               _loc5_ = §2#>§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§0v§)
         {
            if(§0!x§)
            {
               §0!x§.playSound(§0v§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §<">§ = param1;
         return false;
      }
   }
}
