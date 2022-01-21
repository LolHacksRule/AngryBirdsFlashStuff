package §8!§
{
   import §&!!§.§2^§;
   import §&!!§.§<!'§;
   import §2![§.Sprite;
   
   public class §'F§
   {
      
      public static const §[!,§:int = 0;
      
      public static const §"^§:int = 1;
      
      public static const §+2§:int = 2;
      
      public static const §8e§:int = 3;
      
      public static const §#!+§:int = 4;
      
      public static const §9!D§:int = 5;
       
      
      private var §4?§:Vector.<§6,§>;
      
      private var §"!H§:§2^§;
      
      private var §"!,§:§<!'§;
      
      public function §'F§(param1:§2^§, param2:§<!'§)
      {
         super();
         this.§"!H§ = param1;
         this.§"!,§ = param2;
         this.§4?§ = new Vector.<§6,§>();
         var _loc3_:int = 0;
         while(_loc3_ < §9!D§)
         {
            this.§4?§[_loc3_] = new §6,§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §2^§
      {
         return this.§"!H§;
      }
      
      public function get textureManager() : §<!'§
      {
         return this.§"!,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6,§ = null;
         if(this.§4?§)
         {
            while(this.§4?§.length)
            {
               _loc1_ = this.§4?§.pop();
               _loc1_.dispose();
            }
         }
         this.§4?§ = null;
      }
      
      public function §if§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§33§ = new §33§(this.§"!H§,this.§"!,§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§6,§;
         if(_loc18_ = this.§%9§(param3))
         {
            _loc18_.§]!5§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      public function §]!5§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!-§
      {
         var _loc16_:§9!-§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§6,§;
         if(_loc17_ = this.§%9§(param2))
         {
            _loc17_.§]!5§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §9!-§
      {
         return new §9!-§(this.§"!H§,this.§"!,§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§4?§.length)
         {
            this.§%9§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §&6§(param1:int) : void
      {
         var _loc2_:§6,§ = this.§%9§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §3!1§(param1:int) : Sprite
      {
         return this.§%9§(param1).sprite;
      }
      
      public function §%9§(param1:Number) : §6,§
      {
         if(this.§4?§ != null)
         {
            return this.§4?§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§&6§(§[!,§);
         var _loc1_:§6,§ = this.§%9§(§"^§);
         var _loc2_:§6,§ = this.§%9§(§[!,§);
         _loc1_.§8;§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §=6§(param1:Number, param2:Number) : void
      {
         var _loc3_:§6,§ = null;
         for each(_loc3_ in this.§4?§)
         {
            _loc3_.§;j§(param1,param2);
         }
      }
   }
}
