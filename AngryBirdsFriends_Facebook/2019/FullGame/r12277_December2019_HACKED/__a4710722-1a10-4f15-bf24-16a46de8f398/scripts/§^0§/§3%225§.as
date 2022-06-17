package §^0§
{
   import §#Z§.Sprite;
   import §9#M§.§,`§;
   
   public class §3"5§ extends § "Q§
   {
      
      public static const §##H§:String = "idleState";
      
      public static const §?$@§:String = "happyState";
      
      public static const §`#d§:String = "sleepyState";
      
      public static const §?#7§:String = "sleepState";
      
      public static const §-#H§:String = "nervousState";
      
      public static const §5&§:String = "relievedState";
      
      public static const §-#M§:String = "damagedState";
      
      public static const §9";§:String = "freezeState";
      
      public static const §,$D§:String = "sneezeState";
      
      public static const §;!a§:String = "eatingState";
       
      
      public function §3"5§(param1:§,`§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeImage() : void
      {
         §'"i§ = new Sprite();
         super.initializeImage();
      }
      
      public function §-$'§() : Sprite
      {
         return §'"i§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§,`§ = §&"J§.getSubAnimation(param1);
         if(§'#Q§ && §'#Q§.name == _loc3_.name)
         {
            return;
         }
         §>#V§(param2);
         §'#Q§ = _loc3_;
         §8"R§ = true;
         if(§'#Q§)
         {
            _loc4_ = 0;
            if(param1 != §&"J§.defaultSubAnimationName)
            {
               _loc5_ = §'#Q§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§4"v§)
         {
            if(§=#7§)
            {
               §=#7§.playSound(§4"v§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §<V§ = param1;
         return false;
      }
   }
}
