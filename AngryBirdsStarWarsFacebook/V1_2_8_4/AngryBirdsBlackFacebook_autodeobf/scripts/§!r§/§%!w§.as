package §!r§
{
   import §!!k§.§1!^§;
   import §use§.Sprite;
   
   public class §%!w§ extends §0"3§
   {
      
      public static const §`r§:String = "idleState";
      
      public static const §+!;§:String = "happyState";
      
      public static const §`c§:String = "sleepyState";
      
      public static const §<K§:String = "sleepState";
      
      public static const §[!w§:String = "nervousState";
      
      public static const §&!6§:String = "relievedState";
      
      public static const §"P§:String = "damagedState";
      
      public static const §'!R§:String = "freezeState";
      
      public static const §7# §:String = "sneezeState";
      
      public static const §#!3§:String = "eatingState";
       
      
      protected var §-!t§:§>!b§;
      
      public function §%!w§(param1:§1!^§, param2:Sprite, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set §3# §(param1:§>!b§) : void
      {
         this.§-!t§ = param1;
      }
      
      override protected function initializeImage() : void
      {
         §-"e§ = new Sprite();
         super.initializeImage();
      }
      
      public function §'"y§() : Sprite
      {
         return §-"e§;
      }
      
      override public function setAnimation(param1:String, param2:Boolean = true) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:§1!^§ = §#!9§.getSubAnimation(param1);
         if(§`'§ && §`'§.name == _loc3_.name)
         {
            return;
         }
         §>1§(param2);
         §`'§ = _loc3_;
         §#!w§ = true;
         if(§`'§)
         {
            _loc4_ = 0;
            if(param1 != §#!9§.defaultSubAnimationName)
            {
               _loc5_ = §`'§.subAnimationCount;
               _loc4_ = Math.floor(Math.random() * _loc5_);
            }
            this.selectSubAnimation(_loc4_,param2);
         }
      }
      
      override public function selectSubAnimation(param1:int, param2:Boolean = true) : void
      {
         super.selectSubAnimation(param1,param2);
         if(§0Z§)
         {
            if(this.§-!t§)
            {
               this.§-!t§.§`!A§(§0Z§.soundName);
            }
         }
      }
      
      override public function setDamageState(param1:Number, param2:Boolean = true) : Boolean
      {
         §>"g§ = param1;
         return false;
      }
      
      override protected function handleAnimationEnd() : void
      {
         super.handleAnimationEnd();
         if(this.§-!t§)
         {
            this.§-!t§.handleAnimationEnd(§`'§.name,§>"0§,§`'§.subAnimationCount);
         }
      }
   }
}
