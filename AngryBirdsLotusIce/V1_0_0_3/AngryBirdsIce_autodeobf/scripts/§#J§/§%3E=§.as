package §#J§
{
   import §1n§.§,!0§;
   import §1n§.§5#§;
   import §^V§.Sprite;
   
   public class §>=§
   {
      
      public static const §8o§:int = 0;
      
      public static const §8'§:int = 1;
      
      public static const §!!+§:int = 2;
      
      public static const §>!5§:int = 3;
      
      public static const §0,§:int = 4;
      
      public static const §8-§:int = 5;
       
      
      private var §"=§:Vector.<§+h§>;
      
      private var §<H§:§,!0§;
      
      private var §1y§:§5#§;
      
      public function §>=§(param1:§,!0§, param2:§5#§)
      {
         super();
         this.§<H§ = param1;
         this.§1y§ = param2;
         this.§"=§ = new Vector.<§+h§>();
         var _loc3_:int = 0;
         while(_loc3_ < §8-§)
         {
            this.§"=§[_loc3_] = new §+h§();
            _loc3_++;
         }
      }
      
      public function get §0!§() : §,!0§
      {
         return this.§<H§;
      }
      
      public function get textureManager() : §5#§
      {
         return this.§1y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+h§ = null;
         if(this.§"=§)
         {
            while(this.§"=§.length)
            {
               _loc1_ = this.§"=§.pop();
               _loc1_.dispose();
            }
         }
         this.§"=§ = null;
      }
      
      public function §-X§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'b§
      {
         var _loc16_:§'b§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§+h§;
         if(_loc17_ = this.§[2§(param2))
         {
            _loc17_.§-X§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §'b§
      {
         return new §'b§(this.§<H§,this.§1y§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§"=§.length)
         {
            this.§[2§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §5!5§(param1:int) : void
      {
         var _loc2_:§+h§ = this.§[2§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §4!A§(param1:int) : Sprite
      {
         return this.§[2§(param1).sprite;
      }
      
      public function §[2§(param1:Number) : §+h§
      {
         if(this.§"=§ != null)
         {
            return this.§"=§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§5!5§(§8o§);
         var _loc1_:§+h§ = this.§[2§(§8'§);
         var _loc2_:§+h§ = this.§[2§(§8o§);
         _loc1_.§29§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:§+h§ = null;
         for each(_loc3_ in this.§"=§)
         {
            _loc3_.§85§(param1,param2);
         }
      }
   }
}
