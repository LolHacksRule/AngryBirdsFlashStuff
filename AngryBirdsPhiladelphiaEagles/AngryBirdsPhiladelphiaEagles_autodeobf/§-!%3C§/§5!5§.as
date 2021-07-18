package §-!<§
{
   import § N§.Sprite;
   import §#e§.§'?§;
   import §#e§.§@!+§;
   
   public class §5!5§
   {
      
      public static const §[f§:int = 0;
      
      public static const §&!J§:int = 1;
      
      public static const §[!K§:int = 2;
      
      public static const §-U§:int = 3;
      
      public static const §6!Q§:int = 4;
      
      public static const §]!K§:int = 5;
       
      
      private var §9%§:Vector.<§5D§>;
      
      private var §'_§:§@!+§;
      
      private var §2"§:§'?§;
      
      public function §5!5§(param1:§@!+§, param2:§'?§)
      {
         super();
         this.§'_§ = param1;
         this.§2"§ = param2;
         this.§9%§ = new Vector.<§5D§>();
         var _loc3_:int = 0;
         while(_loc3_ < §]!K§)
         {
            this.§9%§[_loc3_] = new §5D§();
            _loc3_++;
         }
      }
      
      public function get §<'§() : §@!+§
      {
         return this.§'_§;
      }
      
      public function get textureManager() : §'?§
      {
         return this.§2"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5D§ = null;
         if(this.§9%§)
         {
            while(this.§9%§.length)
            {
               _loc1_ = this.§9%§.pop();
               _loc1_.dispose();
            }
         }
         this.§9%§ = null;
      }
      
      public function §;!8§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§=K§ = new §=K§(this.§'_§,this.§2"§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§5D§;
         if(_loc18_ = this.§+! §(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8R§
      {
         var _loc16_:§8R§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§5D§;
         if(_loc17_ = this.§+! §(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §8R§
      {
         return new §8R§(this.§'_§,this.§2"§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§9%§.length)
         {
            this.§+! §(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@!3§(param1:int) : void
      {
         var _loc2_:§5D§ = this.§+! §(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §[!8§(param1:int) : Sprite
      {
         return this.§+! §(param1).sprite;
      }
      
      public function §+! §(param1:Number) : §5D§
      {
         if(this.§9%§ != null)
         {
            return this.§9%§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@!3§(§[f§);
         var _loc1_:§5D§ = this.§+! §(§&!J§);
         var _loc2_:§5D§ = this.§+! §(§[f§);
         _loc1_.§1!0§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §<E§(param1:Number, param2:Number) : void
      {
         var _loc3_:§5D§ = null;
         for each(_loc3_ in this.§9%§)
         {
            _loc3_.§0!0§(param1,param2);
         }
      }
   }
}
