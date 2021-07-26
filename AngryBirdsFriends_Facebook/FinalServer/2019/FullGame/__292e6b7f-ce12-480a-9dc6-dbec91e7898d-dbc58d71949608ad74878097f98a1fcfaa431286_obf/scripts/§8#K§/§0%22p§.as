package §8#K§
{
   import §3"V§.§9$8§;
   
   public class §0"p§ extends § !=§
   {
       
      
      private var §=A§:String;
      
      private var §?"Z§:String;
      
      private var §%#o§:String;
      
      public function §0"p§(param1:Object, param2:int, param3:§+#y§, param4:§8$-§, param5:int, param6:Boolean = false, param7:§ !q§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§=A§ = param1.idleSound;
         this.§?"Z§ = param1.fearSound;
         this.§%#o§ = param1.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this.§=A§;
      }
      
      public function get fearSound() : String
      {
         return this.§?"Z§;
      }
      
      override public function get soundChannel() : String
      {
         var _loc1_:String = this.§%#o§;
         if(_loc1_ == null)
         {
            _loc1_ = super.soundChannel;
         }
         return _loc1_;
      }
      
      override public function get materialCollisionSound() : String
      {
         var _loc2_:§8$-§ = null;
         var _loc1_:String = super.materialCollisionSound;
         if(_loc1_ == null)
         {
            if(§"§.sounds)
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
         var _loc2_:§8$-§ = null;
         var _loc1_:String = super.materialDamageSound;
         if(_loc1_ == null)
         {
            if(§"§.sounds)
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
         var _loc2_:§8$-§ = null;
         var _loc1_:String = super.materialDestroyedSound;
         if(_loc1_ == null)
         {
            if(§"§.sounds)
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
         var _loc2_:§8$-§ = null;
         var _loc1_:String = super.materialRollingSound;
         if(_loc1_ == null)
         {
            if(§"§.sounds)
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
      
      override public function playSoundLua(param1:String, param2:String = null, param3:Number = 0, param4:Number = 0) : §9$8§
      {
         var _loc6_:§8$-§ = null;
         var _loc5_:§9$8§;
         if(!(_loc5_ = super.playSoundLua(param1,param2,param3,param4)))
         {
            if(_loc6_ = AngryBirdsBase.singleton.getSoundResource(param1))
            {
               _loc5_ = §!"`§.playSound(_loc6_.§[!0§(),param2,param3,param4);
            }
         }
         return _loc5_;
      }
   }
}
