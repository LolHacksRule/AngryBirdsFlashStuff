package §5"D§
{
   import §4"@§.Sprite;
   import §^e§.§^5§;
   
   public class §!0§ extends §8r§
   {
      
      public static const §3`§:String = "idleState";
      
      public static const §]!P§:String = "happyState";
      
      public static const §8F§:String = "sleepyState";
      
      public static const §`5§:String = "sleepState";
      
      public static const §-!r§:String = "nervousState";
      
      public static const §,!c§:String = "relievedState";
      
      public static const §,",§:String = "damagedState";
      
      public static const §;V§:String = "freezeState";
      
      public static const §?!$§:String = "sneezeState";
      
      public static const §'§:String = "eatingState";
       
      
      protected var §2!R§:§@!t§;
      
      public function §!0§(param1:§^5§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set §+m§(param1:§@!t§) : void
      {
         this.§2!R§ = param1;
      }
      
      override protected function initializeImage() : void
      {
         § § = new Sprite();
         super.initializeImage();
      }
      
      public function §!H§() : Sprite
      {
         return § §;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§^5§ = §=O§.getSubAnimation(param1);
         if(§!V§ && §!V§.name == _loc3_.name)
         {
            return;
         }
         §,Q§(param2);
         §!V§ = _loc3_;
         §&!s§ = true;
         if(§!V§)
         {
            _loc4_ = 0;
            if(param1 != §=O§.defaultSubAnimationName)
            {
               _loc5_ = §!V§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§7!;§)
         {
            if(this.§2!R§)
            {
               this.§2!R§.playSound(§7!;§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §6m§ = param1;
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         super.handleAnimationEnd();
         if(this.§2!R§)
         {
            this.§2!R§.handleAnimationEnd(§!V§.name,§^!8§,§!V§.subAnimationCount);
         }
      }
   }
}
