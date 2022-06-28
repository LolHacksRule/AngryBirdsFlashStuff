package §?t§
{
   import §,_§.Sprite;
   import §5`§.§+q§;
   import §5`§.§?y§;
   
   public class §;x§
   {
      
      public static const §,!5§:int = 0;
      
      public static const §4!D§:int = 1;
      
      public static const §;K§:int = 2;
      
      public static const §]+§:int = 3;
      
      public static const §-4§:int = 4;
      
      public static const §-R§:int = 5;
       
      
      private var §@i§:Vector.<§1v§>;
      
      private var §#L§:§+q§;
      
      private var §^S§:§?y§;
      
      public function §;x§(param1:§+q§, param2:§?y§)
      {
         super();
         this.§#L§ = param1;
         this.§^S§ = param2;
         this.§@i§ = new Vector.<§1v§>();
         var _loc3_:int = 0;
         while(_loc3_ < §-R§)
         {
            this.§@i§[_loc3_] = new §1v§();
            _loc3_++;
         }
      }
      
      public function get § use§() : §+q§
      {
         return this.§#L§;
      }
      
      public function get textureManager() : §?y§
      {
         return this.§^S§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1v§ = null;
         if(this.§@i§)
         {
            while(this.§@i§.length)
            {
               _loc1_ = this.§@i§.pop();
               _loc1_.dispose();
            }
         }
         this.§@i§ = null;
      }
      
      public function §;w§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§#I§ = new §#I§(this.§#L§,this.§^S§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§1v§;
         if(_loc18_ = this.§?O§(param3))
         {
            _loc18_.§8"§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §8"§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,i§
      {
         var _loc16_:§,i§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§1v§;
         if(_loc17_ = this.§?O§(param2))
         {
            _loc17_.§8"§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §,i§
      {
         return new §,i§(this.§#L§,this.§^S§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§@i§.length)
         {
            this.§?O§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §]?§(param1:int) : void
      {
         var _loc2_:§1v§ = this.§?O§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §[$§(param1:int) : Sprite
      {
         return this.§?O§(param1).sprite;
      }
      
      public function §?O§(param1:Number) : §1v§
      {
         if(this.§@i§ != null)
         {
            return this.§@i§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§]?§(§,!5§);
         var _loc1_:§1v§ = this.§?O§(§4!D§);
         var _loc2_:§1v§ = this.§?O§(§,!5§);
         _loc1_.§3"§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §+C§(param1:Number, param2:Number) : void
      {
         var _loc3_:§1v§ = null;
         for each(_loc3_ in this.§@i§)
         {
            _loc3_.§;!A§(param1,param2);
         }
      }
   }
}
