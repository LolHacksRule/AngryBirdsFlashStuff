package §#!4§
{
   import §,!q§.Sprite;
   import §-!b§.§,"1§;
   import §-!b§.§[E§;
   
   public class §0!q§
   {
      
      public static const §5!W§:int = 0;
      
      public static const §-g§:int = 1;
      
      public static const §,V§:int = 2;
      
      public static const §[!V§:int = 3;
      
      public static const §4!H§:int = 4;
      
      public static const §1!>§:int = 5;
      
      public static const §++§:int = 6;
       
      
      private var §'>§:Vector.<§`!j§>;
      
      private var §+-§:§,"1§;
      
      private var §@=§:§[E§;
      
      public function §0!q§(param1:§,"1§, param2:§[E§)
      {
         super();
         this.§+-§ = param1;
         this.§@=§ = param2;
         this.§'>§ = new Vector.<§`!j§>();
         var _loc3_:int = 0;
         while(_loc3_ < §++§)
         {
            this.§'>§[_loc3_] = new §`!j§();
            _loc3_++;
         }
      }
      
      public function get §-h§() : §,"1§
      {
         return this.§+-§;
      }
      
      public function get §0p§() : §[E§
      {
         return this.§@=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`!j§ = null;
         if(this.§'>§)
         {
            while(this.§'>§.length)
            {
               _loc1_ = this.§'>§.pop();
               _loc1_.dispose();
            }
         }
         this.§'>§ = null;
      }
      
      public function §6!=§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §=f§
      {
         var _loc16_:§=f§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§`!j§;
         if(_loc17_ = this.§>!0§(param2))
         {
            _loc17_.§6!=§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §%!V§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§1!x§ = new §1!x§(this.§+-§,this.§@=§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§`!j§;
         if(_loc18_ = this.§>!0§(param3))
         {
            _loc18_.§6!=§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §=f§
      {
         return new §=f§(this.§+-§,this.§@=§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§'>§.length)
         {
            this.§>!0§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §@v§(param1:int) : void
      {
         var _loc2_:§`!j§ = this.§>!0§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §;!9§(param1:int) : Sprite
      {
         return this.§>!0§(param1).sprite;
      }
      
      public function §>!0§(param1:Number) : §`!j§
      {
         if(this.§'>§ != null)
         {
            return this.§'>§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§@v§(§5!W§);
         var _loc1_:§`!j§ = this.§>!0§(§-g§);
         var _loc2_:§`!j§ = this.§>!0§(§5!W§);
         _loc1_.§9! §(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §7Z§(param1:Number, param2:Number) : void
      {
         var _loc3_:§`!j§ = null;
         for each(_loc3_ in this.§'>§)
         {
            _loc3_.§set §(param1,param2);
         }
      }
   }
}
