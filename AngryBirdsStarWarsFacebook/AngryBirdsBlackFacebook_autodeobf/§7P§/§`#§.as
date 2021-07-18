package §7P§
{
   import §!!U§.Sprite;
   import §7!F§.§>"G§;
   
   public class §`#§ extends §,D§
   {
      
      public static const §8!h§:String = "idleState";
      
      public static const § E§:String = "happyState";
      
      public static const §="Z§:String = "sleepyState";
      
      public static const §4a§:String = "sleepState";
      
      public static const §,!Y§:String = "nervousState";
      
      public static const § # §:String = "relievedState";
      
      public static const §^!e§:String = "damagedState";
      
      public static const §0!D§:String = "freezeState";
      
      public static const §`#>§:String = "sneezeState";
      
      public static const §`"r§:String = "eatingState";
       
      
      protected var §'"G§:§^#R§;
      
      public function §`#§(param1:§>"G§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set §""E§(param1:§^#R§) : void
      {
         this.§'"G§ = param1;
      }
      
      override protected function initializeImage() : void
      {
         §&!!§ = new Sprite();
         super.initializeImage();
      }
      
      public function §-#L§() : Sprite
      {
         return §&!!§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§>"G§ = §]!`§.getSubAnimation(param1);
         if(§##+§ && §##+§.name == _loc3_.name)
         {
            return;
         }
         §'!!§(param2);
         §##+§ = _loc3_;
         §&+§ = true;
         if(§##+§)
         {
            _loc4_ = 0;
            if(param1 != §]!`§.defaultSubAnimationName)
            {
               _loc5_ = §##+§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§6#%§)
         {
            if(this.§'"G§)
            {
               this.§'"G§.§"#_§(§6#%§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §;z§ = param1;
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         super.handleAnimationEnd();
         if(this.§'"G§)
         {
            this.§'"G§.handleAnimationEnd(§##+§.name,§!"]§,§##+§.subAnimationCount);
         }
      }
   }
}
