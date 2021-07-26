package §?$<§
{
   import §8#K§.§-!o§;
   
   public class §=$"§ extends §<#x§
   {
       
      
      private var §8"2§:String;
      
      private var §5a§:String;
      
      private var §%#U§:String;
      
      public function §=$"§(param1:Object, param2:int, param3:§;<§, param4:§9!V§, param5:int, param6:Boolean = false, param7:§^#1§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§8"2§ = param1.idleSound;
         this.§5a§ = param1.fearSound;
         this.§%#U§ = param1.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this.§8"2§;
      }
      
      public function get fearSound() : String
      {
         return this.§5a§;
      }
      
      override public function get soundChannel() : String
      {
         var _loc1_:String = this.§%#U§;
         if(_loc1_ == null)
         {
            _loc1_ = super.soundChannel;
         }
         return _loc1_;
      }
      
      override public function get materialCollisionSound() : String
      {
         var _loc2_:§9!V§ = null;
         var _loc1_:String = super.materialCollisionSound;
         if(_loc1_ == null)
         {
            if(§]$4§.sounds)
            {
               _loc2_ = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(_loc2_)
               {
                  _loc1_ = _loc2_.getCollisionSound();
               }
            }
         }
         return _loc1_;
      }
      
      override public function get materialDamageSound() : String
      {
         var _loc2_:§9!V§ = null;
         var _loc1_:String = super.materialDamageSound;
         if(_loc1_ == null)
         {
            if(§]$4§.sounds)
            {
               _loc2_ = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(_loc2_)
               {
                  _loc1_ = _loc2_.getDamagedSound();
               }
            }
         }
         return _loc1_;
      }
      
      override public function get materialDestroyedSound() : String
      {
         var _loc2_:§9!V§ = null;
         var _loc1_:String = super.materialDestroyedSound;
         if(_loc1_ == null)
         {
            if(§]$4§.sounds)
            {
               _loc2_ = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(_loc2_)
               {
                  _loc1_ = _loc2_.getDestroyedSound();
               }
            }
         }
         return _loc1_;
      }
      
      override public function get materialRollingSound() : String
      {
         var _loc2_:§9!V§ = null;
         var _loc1_:String = super.materialRollingSound;
         if(_loc1_ == null)
         {
            if(§]$4§.sounds)
            {
               _loc2_ = AngryBirdsBase.singleton.getSoundResource(material.sounds);
               if(_loc2_)
               {
                  _loc1_ = _loc2_.getRollingSound();
               }
            }
         }
         return _loc1_;
      }
      
      override public function playSoundLua(param1:String, param2:String = null, param3:Number = 0, param4:Number = 0) : §-!o§
      {
         var _loc6_:§9!V§ = null;
         var _loc5_:§-!o§;
         if(!(_loc5_ = super.playSoundLua(param1,param2,param3,param4)))
         {
            if(_loc6_ = AngryBirdsBase.singleton.getSoundResource(param1))
            {
               _loc5_ = §6A§.playSound(_loc6_.§'N§(),param2,param3,param4);
            }
         }
         return _loc5_;
      }
   }
}
