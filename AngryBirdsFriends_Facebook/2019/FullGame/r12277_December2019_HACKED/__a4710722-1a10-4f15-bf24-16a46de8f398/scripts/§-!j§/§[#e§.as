package §-!j§
{
   import § "v§.§+o§;
   
   public class §[#e§ extends §>!8§
   {
       
      
      private var §;!z§:String;
      
      private var §+#t§:String;
      
      private var §-c§:String;
      
      public function §[#e§(param1:Object, param2:int, param3:§5!,§, param4:§&!@§, param5:int, param6:Boolean = false, param7:§4"-§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§;!z§ = param1.idleSound;
         this.§+#t§ = param1.fearSound;
         this.§-c§ = param1.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this.§;!z§;
      }
      
      public function get fearSound() : String
      {
         return this.§+#t§;
      }
      
      override public function get soundChannel() : String
      {
         var _loc1_:String = this.§-c§;
         if(_loc1_ == null)
         {
            _loc1_ = super.soundChannel;
         }
         return _loc1_;
      }
      
      override public function get materialCollisionSound() : String
      {
         var _loc2_:§&!@§ = null;
         var _loc1_:String = super.materialCollisionSound;
         if(_loc1_ == null)
         {
            if(§^!`§.sounds)
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
         var _loc2_:§&!@§ = null;
         var _loc1_:String = super.materialDamageSound;
         if(_loc1_ == null)
         {
            if(§^!`§.sounds)
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
         var _loc2_:§&!@§ = null;
         var _loc1_:String = super.materialDestroyedSound;
         if(_loc1_ == null)
         {
            if(§^!`§.sounds)
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
         var _loc2_:§&!@§ = null;
         var _loc1_:String = super.materialRollingSound;
         if(_loc1_ == null)
         {
            if(§^!`§.sounds)
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
      
      override public function playSoundLua(param1:String, param2:String = null, param3:Number = 0, param4:Number = 0) : §+o§
      {
         var _loc6_:§&!@§ = null;
         var _loc5_:§+o§;
         if(!(_loc5_ = super.playSoundLua(param1,param2,param3,param4)))
         {
            if(_loc6_ = AngryBirdsBase.singleton.getSoundResource(param1))
            {
               _loc5_ = §!8§.playSound(_loc6_.§@$E§(),param2,param3,param4);
            }
         }
         return _loc5_;
      }
   }
}
