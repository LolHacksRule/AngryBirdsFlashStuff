package §6"R§
{
   import §1"s§.Sprite;
   import §3"$§.§[a§;
   
   public class §6"U§ extends §2A§
   {
      
      public static const §+S§:String = "idleState";
      
      public static const §3"s§:String = "happyState";
      
      public static const §`#3§:String = "sleepyState";
      
      public static const §#"1§:String = "sleepState";
      
      public static const §3z§:String = "nervousState";
      
      public static const §5W§:String = "relievedState";
      
      public static const §1!m§:String = "damagedState";
      
      public static const §;R§:String = "freezeState";
      
      public static const §5"&§:String = "sneezeState";
      
      public static const §!t§:String = "eatingState";
       
      
      protected var §&#2§:§!+§;
      
      public function §6"U§(param1:§[a§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set §'#3§(param1:§!+§) : void
      {
         this.§&#2§ = param1;
      }
      
      override protected function initializeImage() : void
      {
         §9&§ = new Sprite();
         super.initializeImage();
      }
      
      public function §[!7§() : Sprite
      {
         return §9&§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§[a§ = §3-§.getSubAnimation(param1);
         if(§?!p§ && §?!p§.name == _loc3_.name)
         {
            return;
         }
         §8#6§(param2);
         §?!p§ = _loc3_;
         §-5§ = true;
         if(§?!p§)
         {
            _loc4_ = 0;
            if(param1 != §3-§.defaultSubAnimationName)
            {
               _loc5_ = §?!p§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§^"=§)
         {
            if(this.§&#2§)
            {
               this.§&#2§.§=Y§(§^"=§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §>!E§ = param1;
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         super.handleAnimationEnd();
         if(this.§&#2§)
         {
            this.§&#2§.handleAnimationEnd(§?!p§.name,§-"f§,§?!p§.subAnimationCount);
         }
      }
   }
}
