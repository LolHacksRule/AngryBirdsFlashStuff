package §;Z§
{
   import § !=§.Sprite;
   import §;L§.§"!X§;
   import §;L§.§8!&§;
   
   public class §@!`§
   {
      
      public static const §>"&§:int = 0;
      
      public static const §?M§:int = 1;
      
      public static const §+!o§:int = 2;
      
      public static const §<<§:int = 3;
      
      public static const §6!!§:int = 4;
      
      public static const §5!y§:int = 5;
      
      public static const §[!3§:int = 6;
       
      
      private var § "%§:Vector.<§%!m§>;
      
      private var §;#§:§8!&§;
      
      private var §'!2§:§"!X§;
      
      public function §@!`§(param1:§8!&§, param2:§"!X§)
      {
         super();
         this.§;#§ = param1;
         this.§'!2§ = param2;
         this.§ "%§ = new Vector.<§%!m§>();
         var _loc3_:int = 0;
         while(_loc3_ < §[!3§)
         {
            this.§ "%§[_loc3_] = new §%!m§();
            _loc3_++;
         }
      }
      
      public function get §%B§() : §8!&§
      {
         return this.§;#§;
      }
      
      public function get §7!m§() : §"!X§
      {
         return this.§'!2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%!m§ = null;
         if(this.§ "%§)
         {
            while(this.§ "%§.length)
            {
               _loc1_ = this.§ "%§.pop();
               _loc1_.dispose();
            }
         }
         this.§ "%§ = null;
      }
      
      public function §;$§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3?§
      {
         var _loc16_:§3?§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§%!m§;
         if(_loc17_ = this.§]k§(param2))
         {
            _loc17_.§;$§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §4s§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§["!§ = new §["!§(this.§;#§,this.§'!2§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§%!m§;
         if(_loc18_ = this.§]k§(param3))
         {
            _loc18_.§;$§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3?§
      {
         return new §3?§(this.§;#§,this.§'!2§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§ "%§.length)
         {
            this.§]k§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §0,§(param1:int) : void
      {
         var _loc2_:§%!m§ = this.§]k§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §2!v§(param1:int) : Sprite
      {
         return this.§]k§(param1).sprite;
      }
      
      public function §]k§(param1:Number) : §%!m§
      {
         if(this.§ "%§ != null)
         {
            return this.§ "%§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§0,§(§>"&§);
         var _loc1_:§%!m§ = this.§]k§(§?M§);
         var _loc2_:§%!m§ = this.§]k§(§>"&§);
         _loc1_.§]!x§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §2v§(param1:Number, param2:Number) : void
      {
         var _loc3_:§%!m§ = null;
         for each(_loc3_ in this.§ "%§)
         {
            _loc3_.§<!,§(param1,param2);
         }
      }
   }
}
