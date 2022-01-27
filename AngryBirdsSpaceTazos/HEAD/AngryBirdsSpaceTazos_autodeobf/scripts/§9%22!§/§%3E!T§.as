package §9"!§
{
   import §&!]§.Sprite;
   import §9!v§.§1!_§;
   
   public class §>!T§ extends §7!"§
   {
      
      public static const §6Z§:String = "idleState";
      
      public static const §+l§:String = "happyState";
      
      public static const §%"3§:String = "sleepyState";
      
      public static const §?"<§:String = "sleepState";
      
      public static const § R§:String = "nervousState";
      
      public static const §6X§:String = "relievedState";
      
      public static const §%"!§:String = "damagedState";
      
      public static const §8!n§:String = "freezeState";
      
      public static const §9!M§:String = "sneezeState";
      
      public static const §["=§:String = "eatingState";
       
      
      protected var §>!E§:§5!m§;
      
      public function §>!T§(param1:§1!_§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set §,!y§(param1:§5!m§) : void
      {
         this.§>!E§ = param1;
      }
      
      override protected function initializeImage() : void
      {
         §4B§ = new Sprite();
         super.initializeImage();
      }
      
      public function §3M§() : Sprite
      {
         return §4B§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§1!_§ = §?^§.getSubAnimation(param1);
         if(§["A§ && §["A§.name == _loc3_.name)
         {
            return;
         }
         §#$§(param2);
         §["A§ = _loc3_;
         §do§ = true;
         if(§["A§)
         {
            _loc4_ = 0;
            if(param1 != §?^§.defaultSubAnimationName)
            {
               _loc5_ = §["A§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§&6§)
         {
            if(this.§>!E§)
            {
               this.§>!E§.playSound(§&6§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §;1§ = param1;
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         super.handleAnimationEnd();
         if(this.§>!E§)
         {
            this.§>!E§.handleAnimationEnd(§["A§.name,§4A§,§["A§.subAnimationCount);
         }
      }
   }
}
