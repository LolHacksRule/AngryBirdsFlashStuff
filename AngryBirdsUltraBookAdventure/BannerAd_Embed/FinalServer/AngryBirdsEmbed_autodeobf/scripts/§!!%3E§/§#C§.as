package §!!>§
{
   import §'k§.§ >§;
   import §'k§.§#k§;
   import §9W§.Sprite;
   
   public class §#C§
   {
      
      public static const §5C§:int = 0;
      
      public static const §=!7§:int = 1;
      
      public static const §3!0§:int = 2;
      
      public static const §#!'§:int = 3;
      
      public static const §3"§:int = 4;
      
      public static const §2p§:int = 5;
       
      
      private var §[N§:Vector.<§#Z§>;
      
      private var §!m§:§#k§;
      
      private var §`!8§:§ >§;
      
      public function §#C§(param1:§#k§, param2:§ >§)
      {
         super();
         this.§!m§ = param1;
         this.§`!8§ = param2;
         this.§[N§ = new Vector.<§#Z§>();
         var _loc3_:int = 0;
         while(_loc3_ < §2p§)
         {
            this.§[N§[_loc3_] = new §#Z§();
            _loc3_++;
         }
      }
      
      public function get §!`§() : §#k§
      {
         return this.§!m§;
      }
      
      public function get textureManager() : § >§
      {
         return this.§`!8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#Z§ = null;
         if(this.§[N§)
         {
            while(this.§[N§.length)
            {
               _loc1_ = this.§[N§.pop();
               _loc1_.dispose();
            }
         }
         this.§[N§ = null;
      }
      
      public function §=!B§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§@§ = new §@§(this.§!m§,this.§`!8§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§#Z§;
         if(_loc18_ = this.§?!7§(param3))
         {
            _loc18_.§'!;§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §'!;§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!8§
      {
         var _loc16_:§!8§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§#Z§;
         if(_loc17_ = this.§?!7§(param2))
         {
            _loc17_.§'!;§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §!8§
      {
         return new §!8§(this.§!m§,this.§`!8§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§[N§.length)
         {
            this.§?!7§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §!a§(param1:int) : void
      {
         var _loc2_:§#Z§ = this.§?!7§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §`U§(param1:int) : Sprite
      {
         return this.§?!7§(param1).sprite;
      }
      
      public function §?!7§(param1:Number) : §#Z§
      {
         if(this.§[N§ != null)
         {
            return this.§[N§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§!a§(§5C§);
         var _loc1_:§#Z§ = this.§?!7§(§=!7§);
         var _loc2_:§#Z§ = this.§?!7§(§5C§);
         _loc1_.§[u§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §-b§(param1:Number, param2:Number) : void
      {
         var _loc3_:§#Z§ = null;
         for each(_loc3_ in this.§[N§)
         {
            _loc3_.§4z§(param1,param2);
         }
      }
   }
}
