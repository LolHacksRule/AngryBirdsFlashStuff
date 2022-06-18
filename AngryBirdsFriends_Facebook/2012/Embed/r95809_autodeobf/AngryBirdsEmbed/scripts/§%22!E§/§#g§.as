package §"!E§
{
   import §->§.Sprite;
   import §[!$§.§"!%§;
   import §[!$§.§`d§;
   
   public class §#g§
   {
      
      public static const §-!"§:int = 0;
      
      public static const §-x§:int = 1;
      
      public static const §+V§:int = 2;
      
      public static const §%!H§:int = 3;
      
      public static const §;p§:int = 4;
      
      public static const §class§:int = 5;
       
      
      private var §7-§:Vector.<§[!-§>;
      
      private var §,l§:§`d§;
      
      private var §7K§:§"!%§;
      
      public function §#g§(param1:§`d§, param2:§"!%§)
      {
         super();
         this.§,l§ = param1;
         this.§7K§ = param2;
         this.§7-§ = new Vector.<§[!-§>();
         var _loc3_:int = 0;
         while(_loc3_ < §class§)
         {
            this.§7-§[_loc3_] = new §[!-§();
            _loc3_++;
         }
      }
      
      public function get §@!5§() : §`d§
      {
         return this.§,l§;
      }
      
      public function get textureManager() : §"!%§
      {
         return this.§7K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!-§ = null;
         if(this.§7-§)
         {
            while(this.§7-§.length)
            {
               _loc1_ = this.§7-§.pop();
               _loc1_.dispose();
            }
         }
         this.§7-§ = null;
      }
      
      public function §#!&§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!E§
      {
         var _loc16_:§9!E§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§[!-§;
         if(_loc17_ = this.§9h§(param2))
         {
            _loc17_.§#!&§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!E§
      {
         return new §9!E§(this.§,l§,this.§7K§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§7-§.length)
         {
            this.§9h§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §"!+§(param1:int) : void
      {
         var _loc2_:§[!-§ = this.§9h§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §'1§(param1:int) : Sprite
      {
         return this.§9h§(param1).sprite;
      }
      
      public function §9h§(param1:Number) : §[!-§
      {
         if(this.§7-§ != null)
         {
            return this.§7-§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§"!+§(§-!"§);
         var _loc1_:§[!-§ = this.§9h§(§-x§);
         var _loc2_:§[!-§ = this.§9h§(§-!"§);
         _loc1_.§ !2§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §<+§(param1:Number, param2:Number) : void
      {
         var _loc3_:§[!-§ = null;
         for each(_loc3_ in this.§7-§)
         {
            _loc3_.§1!5§(param1,param2);
         }
      }
   }
}
