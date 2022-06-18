package §8g§
{
   import §"a§.§8P§;
   import §"a§.§>X§;
   import §;q§.Sprite;
   
   public class §"g§
   {
      
      public static const §07§:int = 0;
      
      public static const §#e§:int = 1;
      
      public static const §+! §:int = 2;
      
      public static const §;$§:int = 3;
      
      public static const §?!8§:int = 4;
      
      public static const §=d§:int = 5;
       
      
      private var §<^§:Vector.<§?9§>;
      
      private var §,3§:§8P§;
      
      private var §>t§:§>X§;
      
      public function §"g§(param1:§8P§, param2:§>X§)
      {
         super();
         this.§,3§ = param1;
         this.§>t§ = param2;
         this.§<^§ = new Vector.<§?9§>();
         var _loc3_:int = 0;
         while(_loc3_ < §=d§)
         {
            this.§<^§[_loc3_] = new §?9§();
            _loc3_++;
         }
      }
      
      public function get §`,§() : §8P§
      {
         return this.§,3§;
      }
      
      public function get textureManager() : §>X§
      {
         return this.§>t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?9§ = null;
         if(this.§<^§)
         {
            while(this.§<^§.length)
            {
               _loc1_ = this.§<^§.pop();
               _loc1_.dispose();
            }
         }
         this.§<^§ = null;
      }
      
      public function §@<§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§1<§ = new §1<§(this.§,3§,this.§>t§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§?9§;
         if(_loc18_ = this.§!!7§(param3))
         {
            _loc18_.§[!5§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §[!5§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §<D§
      {
         var _loc16_:§<D§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§?9§;
         if(_loc17_ = this.§!!7§(param2))
         {
            _loc17_.§[!5§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §<D§
      {
         return new §<D§(this.§,3§,this.§>t§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§<^§.length)
         {
            this.§!!7§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §[X§(param1:int) : void
      {
         var _loc2_:§?9§ = this.§!!7§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §2Q§(param1:int) : Sprite
      {
         return this.§!!7§(param1).sprite;
      }
      
      public function §!!7§(param1:Number) : §?9§
      {
         if(this.§<^§ != null)
         {
            return this.§<^§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§[X§(§07§);
         var _loc1_:§?9§ = this.§!!7§(§#e§);
         var _loc2_:§?9§ = this.§!!7§(§07§);
         _loc1_.§@I§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §4D§(param1:Number, param2:Number) : void
      {
         var _loc3_:§?9§ = null;
         for each(_loc3_ in this.§<^§)
         {
            _loc3_.§3%§(param1,param2);
         }
      }
   }
}
