package §[!B§
{
   import §9`§.§#U§;
   import §9`§.§3f§;
   import §`!n§.Sprite;
   
   public class §7!N§
   {
      
      public static const §5!`§:int = 0;
      
      public static const §<E§:int = 1;
      
      public static const §-L§:int = 2;
      
      public static const §<!Z§:int = 3;
      
      public static const §=!U§:int = 4;
      
      public static const §4[§:int = 5;
      
      public static const §-!2§:int = 6;
       
      
      private var §23§:Vector.<§3@§>;
      
      protected var §;,§:§3f§;
      
      protected var §9k§:§#U§;
      
      public function §7!N§(param1:§3f§, param2:§#U§)
      {
         super();
         this.§;,§ = param1;
         this.§9k§ = param2;
         this.§23§ = new Vector.<§3@§>();
         var _loc3_:int = 0;
         while(_loc3_ < §-!2§)
         {
            this.§23§[_loc3_] = new §3@§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §3f§
      {
         return this.§;,§;
      }
      
      public function get textureManager() : §#U§
      {
         return this.§9k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3@§ = null;
         if(this.§23§)
         {
            while(this.§23§.length)
            {
               _loc1_ = this.§23§.pop();
               _loc1_.dispose();
            }
         }
         this.§23§ = null;
      }
      
      public function §9!-§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§5!b§ = new §5!b§(this.§;,§,this.§9k§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§3@§;
         if(_loc18_ = this.§'<§(param3))
         {
            _loc18_.§3X§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §3X§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,]§
      {
         var _loc16_:§,]§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§3@§;
         if(_loc17_ = this.§'<§(param2))
         {
            _loc17_.§3X§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,]§
      {
         return new §,]§(this.§;,§,this.§9k§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§23§.length)
         {
            this.§'<§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §1!n§(param1:int) : void
      {
         var _loc2_:§3@§ = this.§'<§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §"!_§(param1:int) : Sprite
      {
         return this.§'<§(param1).sprite;
      }
      
      public function §'<§(param1:Number) : §3@§
      {
         if(this.§23§ != null)
         {
            return this.§23§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§1!n§(§5!`§);
         var _loc1_:§3@§ = this.§'<§(§<E§);
         var _loc2_:§3@§ = this.§'<§(§5!`§);
         _loc1_.§-!d§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §5[§(param1:Number, param2:Number) : void
      {
         var _loc3_:§3@§ = null;
         for each(_loc3_ in this.§23§)
         {
            _loc3_.§!D§(param1,param2);
         }
      }
   }
}
