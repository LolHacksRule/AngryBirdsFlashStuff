package §-V§
{
   import §+N§.§,A§;
   import §+N§.§``§;
   import §<!$§.Sprite;
   
   public class §]s§
   {
      
      public static const §-!-§:int = 0;
      
      public static const §'!Z§:int = 1;
      
      public static const §'-§:int = 2;
      
      public static const §0!E§:int = 3;
      
      public static const §'!a§:int = 4;
      
      public static const §`@§:int = 5;
       
      
      private var § F§:Vector.<§<!Z§>;
      
      private var §8U§:§,A§;
      
      private var §!v§:§``§;
      
      public function §]s§(param1:§,A§, param2:§``§)
      {
         super();
         this.§8U§ = param1;
         this.§!v§ = param2;
         this.§ F§ = new Vector.<§<!Z§>();
         var _loc3_:int = 0;
         while(_loc3_ < §`@§)
         {
            this.§ F§[_loc3_] = new §<!Z§();
            _loc3_++;
         }
      }
      
      public function get §%S§() : §,A§
      {
         return this.§8U§;
      }
      
      public function get textureManager() : §``§
      {
         return this.§!v§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!Z§ = null;
         if(this.§ F§)
         {
            while(this.§ F§.length)
            {
               _loc1_ = this.§ F§.pop();
               _loc1_.dispose();
            }
         }
         this.§ F§ = null;
      }
      
      public function §;!V§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §&!^§
      {
         var _loc16_:§&!^§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§<!Z§;
         if(_loc17_ = this.§3!4§(param2))
         {
            _loc17_.§;!V§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §&!^§
      {
         return new §&!^§(this.§8U§,this.§!v§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ F§.length)
         {
            this.§3!4§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §!,§(param1:int) : void
      {
         var _loc2_:§<!Z§ = this.§3!4§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §1!+§(param1:int) : Sprite
      {
         return this.§3!4§(param1).sprite;
      }
      
      public function §3!4§(param1:Number) : §<!Z§
      {
         if(this.§ F§ != null)
         {
            return this.§ F§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§!,§(§-!-§);
         var _loc1_:§<!Z§ = this.§3!4§(§'!Z§);
         var _loc2_:§<!Z§ = this.§3!4§(§-!-§);
         _loc1_.§2]§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §^!%§(param1:Number, param2:Number) : void
      {
         var _loc3_:§<!Z§ = null;
         for each(_loc3_ in this.§ F§)
         {
            _loc3_.§5b§(param1,param2);
         }
      }
   }
}
