package §]">§
{
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §;"3§ extends §&5§
   {
      
      public static const §,Y§:String = "idleState";
      
      public static const §^"7§:String = "happyState";
      
      public static const §;"§:String = "sleepyState";
      
      public static const § !Z§:String = "sleepState";
      
      public static const §@b§:String = "nervousState";
      
      public static const §`!%§:String = "relievedState";
      
      public static const §`!Q§:String = "damagedState";
      
      public static const §"2§:String = "freezeState";
      
      public static const §%!=§:String = "sneezeState";
      
      public static const §,7§:String = "eatingState";
       
      
      protected var §%C§:§3?§;
      
      public function §;"3§(param1:§#r§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set §6m§(param1:§3?§) : void
      {
         this.§%C§ = param1;
      }
      
      override protected function initializeImage() : void
      {
         §;!S§ = new Sprite();
         super.initializeImage();
      }
      
      public function §+"8§() : Sprite
      {
         return §;!S§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§#r§ = §]!k§.getSubAnimation(param1);
         if(§^@§ && §^@§.name == _loc3_.name)
         {
            return;
         }
         §2!0§(param2);
         §^@§ = _loc3_;
         §7Y§ = true;
         if(§^@§)
         {
            _loc4_ = 0;
            if(param1 != §]!k§.defaultSubAnimationName)
            {
               _loc5_ = §^@§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§@D§)
         {
            if(this.§%C§)
            {
               this.§%C§.playSound(§@D§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §3"D§ = param1;
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         super.handleAnimationEnd();
         if(this.§%C§)
         {
            this.§%C§.handleAnimationEnd(§^@§.name,§[6§,§^@§.subAnimationCount);
         }
      }
   }
}
