package §?c§
{
   import § !V§.§7!P§;
   import § !V§.§]"5§;
   import §]!2§.Sprite;
   
   public class final
   {
      
      public static const §9!=§:int = 0;
      
      public static const §=!o§:int = 1;
      
      public static const §56§:int = 2;
      
      public static const §0e§:int = 3;
      
      public static const §?%§:int = 4;
      
      public static const §;J§:int = 5;
       
      
      private var §3!<§:Vector.<§&!`§>;
      
      private var §3!3§:§]"5§;
      
      private var § d§:§7!P§;
      
      public function final(param1:§]"5§, param2:§7!P§)
      {
         super();
         this.§3!3§ = param1;
         this.§ d§ = param2;
         this.§3!<§ = new Vector.<§&!`§>();
         var _loc3_:int = 0;
         while(_loc3_ < §;J§)
         {
            this.§3!<§[_loc3_] = new §&!`§();
            _loc3_++;
         }
      }
      
      public function get §1!U§() : §]"5§
      {
         return this.§3!3§;
      }
      
      public function get §7<§() : §7!P§
      {
         return this.§ d§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&!`§ = null;
         if(this.§3!<§)
         {
            while(this.§3!<§.length)
            {
               _loc1_ = this.§3!<§.pop();
               _loc1_.dispose();
            }
         }
         this.§3!<§ = null;
      }
      
      public function §6!t§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§-!1§ = new §-!1§(this.§3!3§,this.§ d§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§&!`§;
         if(_loc18_ = this.§^!I§(param3))
         {
            _loc18_.§=!J§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §=!J§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3!u§
      {
         var _loc16_:§3!u§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§&!`§;
         if(_loc17_ = this.§^!I§(param2))
         {
            _loc17_.§=!J§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §3!u§
      {
         return new §3!u§(this.§3!3§,this.§ d§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!<§.length)
         {
            this.§^!I§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §%!4§(param1:int) : void
      {
         var _loc2_:§&!`§ = this.§^!I§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §^!C§(param1:int) : Sprite
      {
         return this.§^!I§(param1).sprite;
      }
      
      public function §^!I§(param1:Number) : §&!`§
      {
         if(this.§3!<§ != null)
         {
            return this.§3!<§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§%!4§(§9!=§);
         var _loc1_:§&!`§ = this.§^!I§(§=!o§);
         var _loc2_:§&!`§ = this.§^!I§(§9!=§);
         _loc1_.§1!v§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §08§(param1:Number, param2:Number) : void
      {
         var _loc3_:§&!`§ = null;
         for each(_loc3_ in this.§3!<§)
         {
            _loc3_.§6!<§(param1,param2);
         }
      }
   }
}
