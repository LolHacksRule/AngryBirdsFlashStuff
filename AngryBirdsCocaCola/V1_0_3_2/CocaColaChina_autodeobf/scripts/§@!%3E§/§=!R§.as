package §@!>§
{
   import §8r§.§ "§;
   import §8r§.§@V§;
   import §;t§.Sprite;
   
   public class §=!R§
   {
      
      public static const §9P§:int = 0;
      
      public static const §=O§:int = 1;
      
      public static const §`!N§:int = 2;
      
      public static const §4r§:int = 3;
      
      public static const §-!H§:int = 4;
      
      public static const §8!&§:int = 5;
       
      
      private var §9"§:Vector.<§4l§>;
      
      private var §0h§:§ "§;
      
      private var § u§:§@V§;
      
      public function §=!R§(param1:§ "§, param2:§@V§)
      {
         super();
         this.§0h§ = param1;
         this.§ u§ = param2;
         this.§9"§ = new Vector.<§4l§>();
         var _loc3_:int = 0;
         while(_loc3_ < §8!&§)
         {
            this.§9"§[_loc3_] = new §4l§();
            _loc3_++;
         }
      }
      
      public function get §6!M§() : § "§
      {
         return this.§0h§;
      }
      
      public function get textureManager() : §@V§
      {
         return this.§ u§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4l§ = null;
         if(this.§9"§)
         {
            while(this.§9"§.length)
            {
               _loc1_ = this.§9"§.pop();
               _loc1_.dispose();
            }
         }
         this.§9"§ = null;
      }
      
      public function §'!"§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §<!J§
      {
         var _loc16_:§<!J§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§4l§;
         if(_loc17_ = this.§6[§(param2))
         {
            _loc17_.§'!"§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §<!J§
      {
         return new §<!J§(this.§0h§,this.§ u§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9"§.length)
         {
            this.§6[§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §5T§(param1:int) : void
      {
         var _loc2_:§4l§ = this.§6[§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §`!a§(param1:int) : Sprite
      {
         return this.§6[§(param1).sprite;
      }
      
      public function §6[§(param1:Number) : §4l§
      {
         if(this.§9"§ != null)
         {
            return this.§9"§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§5T§(§9P§);
         var _loc1_:§4l§ = this.§6[§(§=O§);
         var _loc2_:§4l§ = this.§6[§(§9P§);
         _loc1_.§6!V§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §%!T§(param1:Number, param2:Number) : void
      {
         var _loc3_:§4l§ = null;
         for each(_loc3_ in this.§9"§)
         {
            _loc3_.§!Y§(param1,param2);
         }
      }
   }
}
