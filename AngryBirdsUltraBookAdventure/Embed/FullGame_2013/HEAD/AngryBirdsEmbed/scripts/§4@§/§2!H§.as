package §4@§
{
   import §&o§.Sprite;
   import §9K§.§"!?§;
   import §9K§.§5!H§;
   
   public class §2!H§
   {
      
      public static const §[!=§:int = 0;
      
      public static const §+!7§:int = 1;
      
      public static const §3v§:int = 2;
      
      public static const §"!5§:int = 3;
      
      public static const §8p§:int = 4;
      
      public static const §9!0§:int = 5;
      
      public static const §4!J§:int = 6;
       
      
      private var §+!"§:Vector.<§7H§>;
      
      protected var §1§:§"!?§;
      
      protected var §-M§:§5!H§;
      
      public function §2!H§(param1:§"!?§, param2:§5!H§)
      {
         super();
         this.§1§ = param1;
         this.§-M§ = param2;
         this.§+!"§ = new Vector.<§7H§>();
         var _loc3_:int = 0;
         while(_loc3_ < §4!J§)
         {
            this.§+!"§[_loc3_] = new §7H§();
            _loc3_++;
         }
      }
      
      public function get §;!L§() : §"!?§
      {
         return this.§1§;
      }
      
      public function get textureManager() : §5!H§
      {
         return this.§-M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7H§ = null;
         if(this.§+!"§)
         {
            while(this.§+!"§.length)
            {
               _loc1_ = this.§+!"§.pop();
               _loc1_.dispose();
            }
         }
         this.§+!"§ = null;
      }
      
      public function §?e§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§>E§ = new §>E§(this.§1§,this.§-M§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§7H§;
         if(_loc18_ = this.§>!E§(param3))
         {
            _loc18_.§4#§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §4#§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §<!6§
      {
         var _loc16_:§<!6§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§7H§;
         if(_loc17_ = this.§>!E§(param2))
         {
            _loc17_.§4#§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §<!6§
      {
         return new §<!6§(this.§1§,this.§-M§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!"§.length)
         {
            this.§>!E§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §#N§(param1:int) : void
      {
         var _loc2_:§7H§ = this.§>!E§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §%J§(param1:int) : Sprite
      {
         return this.§>!E§(param1).sprite;
      }
      
      public function §>!E§(param1:Number) : §7H§
      {
         if(this.§+!"§ != null)
         {
            return this.§+!"§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§#N§(§[!=§);
         var _loc1_:§7H§ = this.§>!E§(§+!7§);
         var _loc2_:§7H§ = this.§>!E§(§[!=§);
         _loc1_.§6Q§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §?!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:§7H§ = null;
         for each(_loc3_ in this.§+!"§)
         {
            _loc3_.§&4§(param1,param2);
         }
      }
   }
}
