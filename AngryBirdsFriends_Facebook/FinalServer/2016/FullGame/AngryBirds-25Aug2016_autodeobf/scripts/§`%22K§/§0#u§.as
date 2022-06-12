package §`"K§
{
   import §&#S§.§+,§;
   import §0m§.b2Vec2;
   import §8§.§#$+§;
   import §=!7§.§5"6§;
   import §=!7§.§=$4§;
   import §[#a§.§7!O§;
   
   public class §0#u§
   {
       
      
      private var §5h§:int;
      
      private var §&#O§:String;
      
      private var §2"g§:String;
      
      private var §;!i§:String;
      
      private var §^!A§:int;
      
      private var §'# §:Number;
      
      private var §2#!§:Number;
      
      private var §5!`§:Number;
      
      private var §&#6§:Number;
      
      private var §>";§:int;
      
      protected var §+!5§:Number;
      
      protected var §'! §:Number;
      
      private var §9"-§:§7!O§;
      
      private var §0U§:§+,§;
      
      private var §7"^§:Number = 0;
      
      private var §@$§:Number = 0;
      
      private var §8#A§:Boolean = false;
      
      private var §>^§:int = 0;
      
      private var §]"?§:Number = 1.0;
      
      private var §`"+§:Number = 0;
      
      private var §;"V§:String = "";
      
      private var §,"d§:Number;
      
      private var §%##§:Number;
      
      private var §8!K§:int = 0;
      
      private var §]#w§:Number = 0;
      
      private var §@9§:b2Vec2;
      
      public function §0#u§()
      {
         this.§@9§ = new b2Vec2();
         super();
      }
      
      public function § m§(param1:String, param2:String) : void
      {
         this.§&#O§ = param1;
         this.§2"g§ = param2;
      }
      
      public function §^"s§(param1:String, param2:int, param3:Number, param4:Number = 360, param5:Number = 1.0, param6:Number = 1.0, param7:int = 0, param8:Number = 0, param9:int = 2, param10:String = "", param11:Number = 1, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:int = 0) : void
      {
         this.§;!i§ = param1;
         this.§^!A§ = param2;
         this.§'# § = param3;
         this.§2#!§ = param4;
         this.§5!`§ = param5;
         this.§&#6§ = param6;
         this.§>";§ = param7;
         this.§@$§ = param8;
         this.§5h§ = param9;
         this.§;"V§ = param10;
         this.§]"?§ = param11;
         this.§`"+§ = param12;
         this.§,"d§ = param13;
         this.§%##§ = param14;
         this.§8!K§ = param15;
      }
      
      public function §"!%§(param1:Number, param2:Number, param3:§7!O§, param4:Number, param5:Number, param6:Number = 0, param7:b2Vec2 = null) : void
      {
         if(param1 / param2 > this.§5h§)
         {
            if(this.§&#O§)
            {
               §#$+§.playSound(this.§&#O§,this.§2"g§);
            }
            this.§+!5§ = param4;
            this.§'! § = param5;
            this.§]#w§ = param6;
            this.§@9§ = param7;
            this.§9"-§ = param3;
            if(this.§;!i§)
            {
               if(this.§^!A§ > 0)
               {
                  this.§#!%§();
                  this.§>^§ = this.§>";§ - 1;
                  this.§8#A§ = true;
               }
            }
         }
      }
      
      protected function §#!%§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         _loc1_ = this.§2#!§ / 2 * (Math.PI / 180);
         _loc2_ = this.§@9§.Copy();
         _loc2_.Normalize();
         var _loc3_:Number = Math.atan2(_loc2_.y,_loc2_.x) - _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^!A§)
         {
            _loc6_ = this.§2#!§ / this.§^!A§ * (_loc4_ + 1) * (Math.PI / 180);
            _loc7_ = _loc3_ + _loc6_;
            _loc8_ = -Math.cos(_loc7_) * (this.§5!`§ + Math.random() * (this.§&#6§ - this.§5!`§));
            _loc9_ = -Math.sin(_loc7_) * (this.§5!`§ + Math.random() * (this.§&#6§ - this.§5!`§));
            _loc10_ = this.§;!i§;
            if(this.§8!K§ > 0)
            {
               _loc11_ = Math.random() * this.§8!K§ + 1;
               _loc10_ = this.§;!i§ + "_" + _loc11_;
            }
            this.§9"-§.§"!=§(_loc10_,§5"6§.PARTICLE_GROUP_GAME_EFFECTS,§=$4§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§`"+§,this.§+!5§,this.§'! §,this.§'# §,0,_loc8_,_loc9_,this.§,"d§,this.§%##§,this.§]"?§,-1,true);
            _loc4_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§>^§ > 0 && this.§7"^§ >= this.§@$§ && this.§8#A§)
         {
            this.§#!%§();
            --this.§>^§;
            this.§7"^§ = 0;
         }
         else if(this.§>";§ == 0 && this.§8#A§)
         {
            this.§8#A§ = false;
         }
         this.§7"^§ += param1;
      }
      
      private function §3#+§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
   }
}
