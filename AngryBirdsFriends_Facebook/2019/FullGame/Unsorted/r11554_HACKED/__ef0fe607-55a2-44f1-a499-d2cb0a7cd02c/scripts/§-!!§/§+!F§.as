package §-!!§
{
   import §!6§.Sprite;
   import §^"[§.§4!8§;
   
   public class §+!F§ extends §+!&§
   {
      
      public static const §+m§:String = "idleState";
      
      public static const §3X§:String = "happyState";
      
      public static const §,$<§:String = "sleepyState";
      
      public static const §0#G§:String = "sleepState";
      
      public static const § #K§:String = "nervousState";
      
      public static const §;"5§:String = "relievedState";
      
      public static const §"9§:String = "damagedState";
      
      public static const §-!1§:String = "freezeState";
      
      public static const §4m§:String = "sneezeState";
      
      public static const §@#8§:String = "eatingState";
       
      
      public function §+!F§(param1:§4!8§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeImage() : void
      {
         §6"!§ = new Sprite();
         super.initializeImage();
      }
      
      public function §+"9§() : Sprite
      {
         return §6"!§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§4!8§ = §"m§.getSubAnimation(param1);
         if(§7#T§ && §7#T§.name == _loc3_.name)
         {
            return;
         }
         §]"]§(param2);
         §7#T§ = _loc3_;
         § !K§ = true;
         if(§7#T§)
         {
            _loc4_ = 0;
            if(param1 != §"m§.defaultSubAnimationName)
            {
               _loc5_ = §7#T§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§%"w§)
         {
            if(§%#=§)
            {
               §%#=§.playSound(§%"w§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §2#8§ = param1;
         return false;
      }
   }
}
