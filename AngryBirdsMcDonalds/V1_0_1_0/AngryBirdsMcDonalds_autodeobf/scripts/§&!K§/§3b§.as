package §&!K§
{
   import §&[§.§&!m§;
   import §&[§.§0!I§;
   import §2!g§.Sprite;
   
   public class §3b§
   {
      
      public static const §[!g§:int = 0;
      
      public static const §8]§:int = 1;
      
      public static const §^!§:int = 2;
      
      public static const §;-§:int = 3;
      
      public static const §1!e§:int = 4;
      
      public static const §0s§:int = 5;
       
      
      private var §,3§:Vector.<§,d§>;
      
      private var §@]§:§0!I§;
      
      private var §`k§:§&!m§;
      
      public function §3b§(param1:§0!I§, param2:§&!m§)
      {
         super();
         this.§@]§ = param1;
         this.§`k§ = param2;
         this.§,3§ = new Vector.<§,d§>();
         var _loc3_:int = 0;
         while(_loc3_ < §0s§)
         {
            this.§,3§[_loc3_] = new §,d§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §0!I§
      {
         return this.§@]§;
      }
      
      public function get textureManager() : §&!m§
      {
         return this.§`k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,d§ = null;
         if(this.§,3§)
         {
            while(this.§,3§.length)
            {
               _loc1_ = this.§,3§.pop();
               _loc1_.dispose();
            }
         }
         this.§,3§ = null;
      }
      
      public function §^!J§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§+!7§ = new §+!7§(this.§@]§,this.§`k§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§,d§;
         if(_loc18_ = this.§&!g§(param3))
         {
            _loc18_.§"!S§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §"!S§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^!3§
      {
         var _loc16_:§^!3§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§,d§;
         if(_loc17_ = this.§&!g§(param2))
         {
            _loc17_.§"!S§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §^!3§
      {
         return new §^!3§(this.§@]§,this.§`k§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§,3§.length)
         {
            this.§&!g§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §9R§(param1:int) : void
      {
         var _loc2_:§,d§ = this.§&!g§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §^!"§(param1:int) : Sprite
      {
         return this.§&!g§(param1).sprite;
      }
      
      public function §&!g§(param1:Number) : §,d§
      {
         if(this.§,3§ != null)
         {
            return this.§,3§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§9R§(§[!g§);
         var _loc1_:§,d§ = this.§&!g§(§8]§);
         var _loc2_:§,d§ = this.§&!g§(§[!g§);
         _loc1_.§9n§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §&f§(param1:Number, param2:Number) : void
      {
         var _loc3_:§,d§ = null;
         for each(_loc3_ in this.§,3§)
         {
            _loc3_.§-4§(param1,param2);
         }
      }
   }
}
