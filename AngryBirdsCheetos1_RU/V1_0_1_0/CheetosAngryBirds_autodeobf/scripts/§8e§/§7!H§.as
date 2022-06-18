package §8e§
{
   import §&!5§.Sprite;
   import §9!2§.§'![§;
   import §9!2§.§0!5§;
   
   public class §7!H§
   {
      
      public static const §,Y§:int = 0;
      
      public static const §-Y§:int = 1;
      
      public static const §'0§:int = 2;
      
      public static const §]0§:int = 3;
      
      public static const §#5§:int = 4;
      
      public static const §=]§:int = 5;
       
      
      private var §&D§:Vector.<§9$§>;
      
      private var §;!U§:§0!5§;
      
      private var §5-§:§'![§;
      
      public function §7!H§(param1:§0!5§, param2:§'![§)
      {
         super();
         this.§;!U§ = param1;
         this.§5-§ = param2;
         this.§&D§ = new Vector.<§9$§>();
         var _loc3_:int = 0;
         while(_loc3_ < §=]§)
         {
            this.§&D§[_loc3_] = new §9$§();
            _loc3_++;
         }
      }
      
      public function get §&"§() : §0!5§
      {
         return this.§;!U§;
      }
      
      public function get §2!#§() : §'![§
      {
         return this.§5-§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9$§ = null;
         if(this.§&D§)
         {
            while(this.§&D§.length)
            {
               _loc1_ = this.§&D§.pop();
               _loc1_.dispose();
            }
         }
         this.§&D§ = null;
      }
      
      public function §[H§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§?#§ = new §?#§(this.§;!U§,this.§5-§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§9$§;
         if(_loc18_ = this.§=3§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §"!U§
      {
         var _loc16_:§"!U§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§9$§;
         if(_loc17_ = this.§=3§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §"!U§
      {
         return new §"!U§(this.§;!U§,this.§5-§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§&D§.length)
         {
            this.§=3§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §;2§(param1:int) : void
      {
         var _loc2_:§9$§ = this.§=3§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function § E§(param1:int) : Sprite
      {
         return this.§=3§(param1).sprite;
      }
      
      public function §=3§(param1:Number) : §9$§
      {
         if(this.§&D§ != null)
         {
            return this.§&D§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§;2§(§,Y§);
         var _loc1_:§9$§ = this.§=3§(§-Y§);
         var _loc2_:§9$§ = this.§=3§(§,Y§);
         _loc1_.§`![§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §?'§(param1:Number, param2:Number) : void
      {
         var _loc3_:§9$§ = null;
         for each(_loc3_ in this.§&D§)
         {
            _loc3_.§%!L§(param1,param2);
         }
      }
   }
}
