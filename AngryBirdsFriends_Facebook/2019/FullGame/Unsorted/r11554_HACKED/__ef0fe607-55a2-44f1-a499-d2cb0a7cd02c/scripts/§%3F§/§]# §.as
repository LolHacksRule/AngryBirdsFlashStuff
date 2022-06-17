package §?§#3
{
   import §>"9§.§1"T§;
   
   public class §]# § extends §7E§
   {
       
      
      private var §<$!§:String;
      
      private var §^#<§:String;
      
      private var §9"i§:String;
      
      public function §]# §(param1:Object, param2:int, param3:§7!$§, param4:§4I§, param5:int, param6:Boolean = false, param7:§`"N§ = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7);
         this.§<$!§ = param1.idleSound;
         this.§^#<§ = param1.fearSound;
         this.§9"i§ = param1.soundChannel;
      }
      
      public function get idleSound() : String
      {
         return this.§<$!§;
      }
      
      public function get fearSound() : String
      {
         return this.§^#<§;
      }
      
      override public function get soundChannel() : String
      {
         var _loc1_:String = this.§9"i§;
         if(_loc1_ == null)
         {
            _loc1_ = super.soundChannel;
         }
         return _loc1_;
      }
      
      override public function get materialCollisionSound() : String
      {
         var _loc2_:§4I§ = null;
         var _loc1_:String = super.materialCollisionSound;
         if(_loc1_ == null)
         {
            if(§@#=§.sounds)
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
         var _loc2_:§4I§ = null;
         var _loc1_:String = super.materialDamageSound;
         if(_loc1_ == null)
         {
            if(§@#=§.sounds)
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
         var _loc2_:§4I§ = null;
         var _loc1_:String = super.materialDestroyedSound;
         if(_loc1_ == null)
         {
            if(§@#=§.sounds)
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
         var _loc2_:§4I§ = null;
         var _loc1_:String = super.materialRollingSound;
         if(_loc1_ == null)
         {
            if(§@#=§.sounds)
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
      
      override public function playSoundLua(param1:String, param2:String = null, param3:Number = 0, param4:Number = 0) : §1"T§
      {
         var _loc6_:§4I§ = null;
         var _loc5_:§1"T§;
         if(!(_loc5_ = super.playSoundLua(param1,param2,param3,param4)))
         {
            if(_loc6_ = AngryBirdsBase.singleton.getSoundResource(param1))
            {
               _loc5_ = §3<§.playSound(_loc6_.§6"x§(),param2,param3,param4);
            }
         }
         return _loc5_;
      }
   }
}
