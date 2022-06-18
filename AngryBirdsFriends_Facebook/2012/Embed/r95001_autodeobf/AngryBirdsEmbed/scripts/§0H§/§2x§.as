package §0H§
{
   import §<k§.Sprite;
   import §[n§.§7!@§;
   import §[n§.§?+§;
   
   public class §2x§
   {
      
      public static const §?!'§:int = 0;
      
      public static const §+u§:int = 1;
      
      public static const §"s§:int = 2;
      
      public static const §3!6§:int = 3;
      
      public static const §-!>§:int = 4;
      
      public static const §;L§:int = 5;
       
      
      private var §!Q§:Vector.<§7i§>;
      
      private var §6!-§:§7!@§;
      
      private var §^s§:§?+§;
      
      public function §2x§(param1:§7!@§, param2:§?+§)
      {
         super();
         this.§6!-§ = param1;
         this.§^s§ = param2;
         this.§!Q§ = new Vector.<§7i§>();
         var _loc3_:int = 0;
         while(_loc3_ < §;L§)
         {
            this.§!Q§[_loc3_] = new §7i§();
            _loc3_++;
         }
      }
      
      public function get §[y§() : §7!@§
      {
         return this.§6!-§;
      }
      
      public function get textureManager() : §?+§
      {
         return this.§^s§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7i§ = null;
         if(this.§!Q§)
         {
            while(this.§!Q§.length)
            {
               _loc1_ = this.§!Q§.pop();
               _loc1_.dispose();
            }
         }
         this.§!Q§ = null;
      }
      
      public function §]1§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-V§
      {
         var _loc16_:§-V§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§7i§;
         if(_loc17_ = this.§[I§(param2))
         {
            _loc17_.§]1§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §-V§
      {
         return new §-V§(this.§6!-§,this.§^s§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!Q§.length)
         {
            this.§[I§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@%§(param1:int) : void
      {
         var _loc2_:§7i§ = this.§[I§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §+?§(param1:int) : Sprite
      {
         return this.§[I§(param1).sprite;
      }
      
      public function §[I§(param1:Number) : §7i§
      {
         if(this.§!Q§ != null)
         {
            return this.§!Q§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@%§(§?!'§);
         var _loc1_:§7i§ = this.§[I§(§+u§);
         var _loc2_:§7i§ = this.§[I§(§?!'§);
         _loc1_.§5D§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function include(param1:Number, param2:Number) : void
      {
         var _loc3_:§7i§ = null;
         for each(_loc3_ in this.§!Q§)
         {
            _loc3_.§'s§(param1,param2);
         }
      }
   }
}
