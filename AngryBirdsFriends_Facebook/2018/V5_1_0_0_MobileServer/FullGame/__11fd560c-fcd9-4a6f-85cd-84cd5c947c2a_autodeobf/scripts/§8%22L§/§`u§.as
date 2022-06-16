package §8"L§
{
   public class §`u§ extends §5K§
   {
       
      
      private var §""i§:String;
      
      private var §`!o§:String;
      
      private var §<"8§:String;
      
      public function §`u§(param1:Object, param2:int, param3:§?"b§, param4:§+"L§, param5:int, param6:Boolean = false, param7:§6!0§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§""i§ = param1.idleSound;
         this.§`!o§ = param1.fearSound;
         this.§<"8§ = param1.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this.§""i§;
      }
      
      public function get fearSound() : String
      {
         return this.§`!o§;
      }
      
      override public function get soundChannel() : String
      {
         var _loc1_:String = this.§<"8§;
         if(_loc1_ == null)
         {
            _loc1_ = super.soundChannel;
         }
         return _loc1_;
      }
      
      override public function get materialCollisionSound() : String
      {
         var _loc2_:§+"L§ = null;
         var _loc1_:String = super.materialCollisionSound;
         if(_loc1_ == null)
         {
            if(§ !-§.sounds)
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
         var _loc2_:§+"L§ = null;
         var _loc1_:String = super.materialDamageSound;
         if(_loc1_ == null)
         {
            if(§ !-§.sounds)
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
         var _loc2_:§+"L§ = null;
         var _loc1_:String = super.materialDestroyedSound;
         if(_loc1_ == null)
         {
            if(§ !-§.sounds)
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
         var _loc2_:§+"L§ = null;
         var _loc1_:String = super.materialRollingSound;
         if(_loc1_ == null)
         {
            if(§ !-§.sounds)
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
   }
}
