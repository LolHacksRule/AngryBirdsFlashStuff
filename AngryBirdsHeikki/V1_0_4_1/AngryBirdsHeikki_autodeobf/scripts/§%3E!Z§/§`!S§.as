package §>!Z§
{
   import §%O§.§ !§;
   import §%O§.§`b§;
   import §<!-§.Sprite;
   
   public class §`!S§
   {
      
      public static const §@!X§:int = 0;
      
      public static const §6!8§:int = 1;
      
      public static const §3!#§:int = 2;
      
      public static const §3!_§:int = 3;
      
      public static const §%8§:int = 4;
      
      public static const §"c§:int = 5;
       
      
      private var §3!A§:Vector.<§=M§>;
      
      private var §%7§:§`b§;
      
      private var §^4§:§ !§;
      
      public function §`!S§(param1:§`b§, param2:§ !§)
      {
         super();
         this.§%7§ = param1;
         this.§^4§ = param2;
         this.§3!A§ = new Vector.<§=M§>();
         var _loc3_:int = 0;
         while(_loc3_ < §"c§)
         {
            this.§3!A§[_loc3_] = new §=M§();
            _loc3_++;
         }
      }
      
      public function get §7p§() : §`b§
      {
         return this.§%7§;
      }
      
      public function get textureManager() : § !§
      {
         return this.§^4§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=M§ = null;
         if(this.§3!A§)
         {
            while(this.§3!A§.length)
            {
               _loc1_ = this.§3!A§.pop();
               _loc1_.dispose();
            }
         }
         this.§3!A§ = null;
      }
      
      public function §'H§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§2!b§ = new §2!b§(this.§%7§,this.§^4§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§=M§;
         if(_loc18_ = this.§+!<§(param3))
         {
            _loc18_.addParticle(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §+!Z§
      {
         var _loc16_:§+!Z§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§=M§;
         if(_loc17_ = this.§+!<§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §+!Z§
      {
         return new §+!Z§(this.§%7§,this.§^4§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!A§.length)
         {
            this.§+!<§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §&D§(param1:int) : void
      {
         var _loc2_:§=M§ = this.§+!<§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §!$§(param1:int) : Sprite
      {
         return this.§+!<§(param1).sprite;
      }
      
      public function §+!<§(param1:Number) : §=M§
      {
         if(this.§3!A§ != null)
         {
            return this.§3!A§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§&D§(§@!X§);
         var _loc1_:§=M§ = this.§+!<§(§6!8§);
         var _loc2_:§=M§ = this.§+!<§(§@!X§);
         _loc1_.§^$§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §6!<§(param1:Number, param2:Number) : void
      {
         var _loc3_:§=M§ = null;
         for each(_loc3_ in this.§3!A§)
         {
            _loc3_.§!!6§(param1,param2);
         }
      }
   }
}
