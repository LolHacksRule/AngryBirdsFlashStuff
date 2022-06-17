package §+!"§
{
   import § "v§.§4$4§;
   import § null§.§@§;
   import §%$0§.§2#Z§;
   import §%$0§.§`#I§;
   import §6!R§.b2Vec2;
   import §^0§.§>"T§;
   
   public class §@#E§
   {
       
      
      private var §`!E§:int;
      
      private var §0!s§:Array;
      
      private var §[#r§:String;
      
      private var §="0§:String;
      
      private var §;!A§:int;
      
      private var §=Z§:Number;
      
      private var §8"a§:Number;
      
      private var §-!G§:Number;
      
      private var §2"s§:Number;
      
      private var §9y§:int;
      
      protected var §0k§:Number;
      
      protected var §@_§:Number;
      
      private var §5"-§:§>"T§;
      
      private var § !S§:§@#5§;
      
      private var §;"O§:Number = 0;
      
      private var §"3§:Number = 0;
      
      private var §@#3§:Boolean = false;
      
      private var § "Z§:int = 0;
      
      private var §6#q§:Number = 1.0;
      
      private var §"$B§:Number = 0;
      
      private var §3!x§:String = "";
      
      private var §%"K§:Number;
      
      private var §^I§:Number;
      
      private var §break§:int = 0;
      
      private var §<"n§:Number = 0;
      
      private var §8$0§:b2Vec2;
      
      public function §@#E§()
      {
         this.§8$0§ = new b2Vec2();
         super();
      }
      
      public function §+P§(param1:Array, param2:String) : void
      {
         this.§0!s§ = param1;
         this.§[#r§ = param2;
      }
      
      public function §9#d§(param1:String, param2:int, param3:Number, param4:Number = 360, param5:Number = 1.0, param6:Number = 1.0, param7:int = 0, param8:Number = 0, param9:int = 2, param10:String = "", param11:Number = 1, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:int = 0) : void
      {
         this.§="0§ = param1;
         this.§;!A§ = param2;
         this.§=Z§ = param3;
         this.§8"a§ = param4;
         this.§-!G§ = param5;
         this.§2"s§ = param6;
         this.§9y§ = param7;
         this.§"3§ = param8;
         this.§`!E§ = param9;
         this.§3!x§ = param10;
         this.§6#q§ = param11;
         this.§"$B§ = param12;
         this.§%"K§ = param13;
         this.§^I§ = param14;
         this.§break§ = param15;
      }
      
      public function §5M§(param1:Number, param2:Number, param3:§>"T§, param4:Number, param5:Number, param6:Number = 0, param7:b2Vec2 = null) : void
      {
         var _loc8_:int = 0;
         if(param1 / param2 > this.§`!E§)
         {
            if(this.§0!s§)
            {
               _loc8_ = Math.random() * this.§0!s§.length;
               §4$4§.playSound(this.§0!s§[_loc8_],this.§[#r§);
            }
            this.§0k§ = param4;
            this.§@_§ = param5;
            this.§<"n§ = param6;
            this.§8$0§ = param7;
            this.§5"-§ = param3;
            if(this.§="0§)
            {
               if(this.§;!A§ > 0)
               {
                  this.§2?§();
                  this.§ "Z§ = this.§9y§ - 1;
                  this.§@#3§ = true;
               }
            }
         }
      }
      
      protected function §2?§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         _loc1_ = this.§8"a§ / 2 * (Math.PI / 180);
         _loc2_ = this.§8$0§.Copy();
         _loc2_.Normalize();
         var _loc3_:Number = Math.atan2(_loc2_.y,_loc2_.x) - _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this.§;!A§)
         {
            _loc6_ = this.§8"a§ / this.§;!A§ * (_loc4_ + 1) * (Math.PI / 180);
            _loc7_ = _loc3_ + _loc6_;
            _loc8_ = -Math.cos(_loc7_) * (this.§-!G§ + Math.random() * (this.§2"s§ - this.§-!G§));
            _loc9_ = -Math.sin(_loc7_) * (this.§-!G§ + Math.random() * (this.§2"s§ - this.§-!G§));
            _loc10_ = this.§="0§;
            if(this.§break§ > 0)
            {
               _loc11_ = Math.random() * this.§break§ + 1;
               _loc10_ = this.§="0§ + "_" + _loc11_;
            }
            this.§5"-§.§7!`§(_loc10_,§2#Z§.PARTICLE_GROUP_GAME_EFFECTS,§`#I§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§"$B§,this.§0k§,this.§@_§,this.§=Z§,0,_loc8_,_loc9_,this.§%"K§,this.§^I§,this.§6#q§,-1,true);
            _loc4_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§ "Z§ > 0 && this.§;"O§ >= this.§"3§ && this.§@#3§)
         {
            this.§2?§();
            --this.§ "Z§;
            this.§;"O§ = 0;
         }
         else if(this.§9y§ == 0 && this.§@#3§)
         {
            this.§@#3§ = false;
         }
         this.§;"O§ += param1;
      }
      
      private function §#$=§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
   }
}
