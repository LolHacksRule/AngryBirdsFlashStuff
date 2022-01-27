package §^9§
{
   import §!!k§.§0!B§;
   import §!!k§.§?!3§;
   import §use§.Sprite;
   
   public class §^#'§
   {
      
      public static const §0"^§:int = 0;
      
      public static const §set §:int = 1;
      
      public static const § "O§:int = 2;
      
      public static const §&5§:int = 3;
      
      public static const §!!E§:int = 4;
      
      public static const §1!7§:int = 5;
      
      public static const §8@§:int = 6;
       
      
      private var §!"^§:Vector.<§@"2§>;
      
      private var §9"v§:§?!3§;
      
      private var §9!G§:§0!B§;
      
      public function §^#'§(param1:§?!3§, param2:§0!B§)
      {
         super();
         this.§9"v§ = param1;
         this.§9!G§ = param2;
         this.§!"^§ = new Vector.<§@"2§>();
         var _loc3_:int = 0;
         while(_loc3_ < §8@§)
         {
            this.§!"^§[_loc3_] = new §@"2§();
            _loc3_++;
         }
      }
      
      public function get animationManager() : §?!3§
      {
         return this.§9"v§;
      }
      
      public function get textureManager() : §0!B§
      {
         return this.§9!G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@"2§ = null;
         if(this.§!"^§)
         {
            while(this.§!"^§.length)
            {
               _loc1_ = this.§!"^§.pop();
               _loc1_.dispose();
            }
         }
         this.§!"^§ = null;
      }
      
      public function §>#1§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §?"E§
      {
         var _loc16_:§?"E§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§@"2§;
         if(_loc17_ = this.§!!_§(param2))
         {
            _loc17_.§>#1§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      public function §1#-§(param1:String, param2:String, param3:int, param4:int, param5:Number, param6:Number, param7:Number, param8:String, param9:int, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 1, param15:int = -1, param16:Boolean = false) : void
      {
         var _loc17_:§=!v§ = new §=!v§(this.§9"v§,this.§9!G§,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param1);
         var _loc18_:§@"2§;
         if(_loc18_ = this.§!!_§(param3))
         {
            _loc18_.§>#1§(_loc17_);
         }
         else
         {
            _loc17_.dispose();
         }
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §?"E§
      {
         return new §?"E§(this.§9"v§,this.§9!G§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§!"^§.length)
         {
            this.§!!_§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §%!-§(param1:int) : void
      {
         var _loc2_:§@"2§ = this.§!!_§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §9!z§(param1:int) : Sprite
      {
         return this.§!!_§(param1).sprite;
      }
      
      public function §!!_§(param1:Number) : §@"2§
      {
         if(this.§!"^§ != null)
         {
            return this.§!"^§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§%!-§(§0"^§);
         var _loc1_:§@"2§ = this.§!!_§(§set §);
         var _loc2_:§@"2§ = this.§!!_§(§0"^§);
         _loc1_.§2j§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §7!G§(param1:Number, param2:Number) : void
      {
         var _loc3_:§@"2§ = null;
         for each(_loc3_ in this.§!"^§)
         {
            _loc3_.§!!'§(param1,param2);
         }
      }
   }
}
