package §;!=§
{
   import §,#e§.Sprite;
   import §7"T§.§7b§;
   
   public class §!$A§ extends §1!"§
   {
      
      public static const §'"L§:String = "idleState";
      
      public static const §2"V§:String = "happyState";
      
      public static const §^#X§:String = "sleepyState";
      
      public static const §]#K§:String = "sleepState";
      
      public static const §#"V§:String = "nervousState";
      
      public static const §;#X§:String = "relievedState";
      
      public static const §;!c§:String = "damagedState";
      
      public static const §1&§:String = "freezeState";
      
      public static const §0!6§:String = "sneezeState";
      
      public static const §[!Q§:String = "eatingState";
       
      
      public function §!$A§(param1:§7b§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeImage() : void
      {
         §9#C§ = new Sprite();
         super.initializeImage();
      }
      
      public function §3!A§() : Sprite
      {
         return §9#C§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§7b§ = §#"T§.getSubAnimation(param1);
         if(§1d§ && §1d§.name == _loc3_.name)
         {
            return;
         }
         §%#n§(param2);
         §1d§ = _loc3_;
         §[m§ = true;
         if(§1d§)
         {
            _loc4_ = 0;
            if(param1 != §#"T§.defaultSubAnimationName)
            {
               _loc5_ = §1d§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§9#b§)
         {
            if(§@#q§)
            {
               §@#q§.playSound(§9#b§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §2J§ = param1;
         return false;
      }
   }
}
