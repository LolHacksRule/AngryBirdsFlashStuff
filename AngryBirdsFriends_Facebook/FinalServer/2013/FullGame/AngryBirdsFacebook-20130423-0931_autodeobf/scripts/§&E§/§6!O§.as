package §&E§
{
   import §'!6§.Sprite;
   import §<T§.§^!Y§;
   import §<T§.§`m§;
   
   public class §6!O§
   {
      
      public static const §`U§:int = 0;
      
      public static const §-4§:int = 1;
      
      public static const PARTICLE_GROUP_BACKGROUND_EFFECTS:int = 2;
      
      public static const PARTICLE_GROUP_GAME_EFFECTS:int = 3;
      
      public static const §;m§:int = 4;
      
      public static const §,G§:int = 5;
      
      public static const §-!!§:int = 6;
       
      
      private var §!"-§:Vector.<§ @§>;
      
      protected var §8"+§:§^!Y§;
      
      protected var §=!2§:§`m§;
      
      public function §6!O§(param1:§^!Y§, param2:§`m§)
      {
         super();
         this.§8"+§ = param1;
         this.§=!2§ = param2;
         this.§!"-§ = new Vector.<§ @§>();
         var _loc3_:int = 0;
         while(_loc3_ < §-!!§)
         {
            this.§!"-§[_loc3_] = new § @§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §^!Y§
      {
         return this.§8"+§;
      }
      
      public function get textureManager() : §`m§
      {
         return this.§=!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ @§ = null;
         if(this.§!"-§)
         {
            while(this.§!"-§.length)
            {
               _loc1_ = this.§!"-§.pop();
               _loc1_.dispose();
            }
         }
         this.§!"-§ = null;
      }
      
      public function §@6§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§]6§ = new §]6§(this.§8"+§,this.§=!2§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§ @§;
         if(_loc18_ = this.§ !N§(param3))
         {
            _loc18_.§"!J§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §"!J§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0i§
      {
         var _loc16_:§0i§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§ @§;
         if(_loc17_ = this.§ !N§(param2))
         {
            _loc17_.§"!J§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §0i§
      {
         return new §0i§(this.§8"+§,this.§=!2§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"-§.length)
         {
            this.§ !N§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §4!@§(param1:int) : void
      {
         var _loc2_:§ @§ = this.§ !N§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function getGroupSprite(param1:int) : Sprite
      {
         return this.§ !N§(param1).sprite;
      }
      
      public function § !N§(param1:Number) : § @§
      {
         if(this.§!"-§ != null)
         {
            return this.§!"-§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§4!@§(§`U§);
         var _loc1_:§ @§ = this.§ !N§(§-4§);
         var _loc2_:§ @§ = this.§ !N§(§`U§);
         _loc1_.§#!4§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         var _loc3_:§ @§ = null;
         for each(_loc3_ in this.§!"-§)
         {
            _loc3_.§^§(param1,param2);
         }
      }
   }
}
