package §[,§
{
   import §'!&§.Sprite;
   import §8o§.§]!U§;
   
   public class §,"%§ extends §#&§
   {
      
      public static const §-!%§:String = "idleState";
      
      public static const §&H§:String = "happyState";
      
      public static const §4!i§:String = "sleepyState";
      
      public static const §;!]§:String = "sleepState";
      
      public static const §%8§:String = "nervousState";
      
      public static const §3"A§:String = "relievedState";
      
      public static const §9v§:String = "damagedState";
      
      public static const §]"G§:String = "freezeState";
      
      public static const §%"D§:String = "sneezeState";
      
      public static const §`o§:String = "eatingState";
       
      
      protected var §1!§:§`G§;
      
      public function §,"%§(param1:§]!U§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set §+B§(param1:§`G§) : void
      {
         this.§1!§ = param1;
      }
      
      override protected function initializeImage() : void
      {
         §%=§ = new Sprite();
         super.initializeImage();
      }
      
      public function §4!@§() : Sprite
      {
         return §%=§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§]!U§ = §"">§.getSubAnimation(param1);
         if(§[O§ && §[O§.name == _loc3_.name)
         {
            return;
         }
         §7!F§(param2);
         §[O§ = _loc3_;
         §="#§ = true;
         if(§[O§)
         {
            _loc4_ = 0;
            if(param1 != §"">§.defaultSubAnimationName)
            {
               _loc5_ = §[O§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§+^§)
         {
            if(this.§1!§)
            {
               this.§1!§.playSound(§+^§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §%!F§ = param1;
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         super.handleAnimationEnd();
         if(this.§1!§)
         {
            this.§1!§.handleAnimationEnd(§[O§.name,§"j§,§[O§.subAnimationCount);
         }
      }
   }
}
