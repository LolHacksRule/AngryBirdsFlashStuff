package §;Q§
{
   import §04§.b2Vec2;
   import §3"V§.§ b§;
   import §7"o§.§##P§;
   import §7"o§.§=,§;
   import §;!=§.§]!m§;
   import §;"5§.§@$-§;
   
   public class §3$5§
   {
       
      
      private var §`v§:int;
      
      private var §-"L§:Array;
      
      private var §7!+§:String;
      
      private var §7!"§:String;
      
      private var §>#u§:int;
      
      private var §@"s§:Number;
      
      private var §"$#§:Number;
      
      private var §,#d§:Number;
      
      private var §?!n§:Number;
      
      private var §&!<§:int;
      
      protected var §&$'§:Number;
      
      protected var §<#-§:Number;
      
      private var §+H§:§]!m§;
      
      private var §!#6§:§@$-§;
      
      private var §9!a§:Number = 0;
      
      private var §&!B§:Number = 0;
      
      private var §;"#§:Boolean = false;
      
      private var §0"#§:int = 0;
      
      private var §#!1§:Number = 1.0;
      
      private var §6!S§:Number = 0;
      
      private var §%"H§:String = "";
      
      private var §?t§:Number;
      
      private var §^]§:Number;
      
      private var §8$3§:int = 0;
      
      private var §8"r§:Number = 0;
      
      private var §@"t§:b2Vec2;
      
      public function §3$5§()
      {
         this.§@"t§ = new b2Vec2();
         super();
      }
      
      public function §0#%§(param1:Array, param2:String) : void
      {
         this.§-"L§ = param1;
         this.§7!+§ = param2;
      }
      
      public function §^g§(param1:String, param2:int, param3:Number, param4:Number = 360, param5:Number = 1.0, param6:Number = 1.0, param7:int = 0, param8:Number = 0, param9:int = 2, param10:String = "", param11:Number = 1, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:int = 0) : void
      {
         this.§7!"§ = param1;
         this.§>#u§ = param2;
         this.§@"s§ = param3;
         this.§"$#§ = param4;
         this.§,#d§ = param5;
         this.§?!n§ = param6;
         this.§&!<§ = param7;
         this.§&!B§ = param8;
         this.§`v§ = param9;
         this.§%"H§ = param10;
         this.§#!1§ = param11;
         this.§6!S§ = param12;
         this.§?t§ = param13;
         this.§^]§ = param14;
         this.§8$3§ = param15;
      }
      
      public function §2$,§(param1:Number, param2:Number, param3:§]!m§, param4:Number, param5:Number, param6:Number = 0, param7:b2Vec2 = null) : void
      {
         var _loc8_:int = 0;
         if(param1 / param2 > this.§`v§)
         {
            if(this.§-"L§)
            {
               _loc8_ = Math.random() * this.§-"L§.length;
               § b§.playSound(this.§-"L§[_loc8_],this.§7!+§);
            }
            this.§&$'§ = param4;
            this.§<#-§ = param5;
            this.§8"r§ = param6;
            this.§@"t§ = param7;
            this.§+H§ = param3;
            if(this.§7!"§)
            {
               if(this.§>#u§ > 0)
               {
                  this.§7+§();
                  this.§0"#§ = this.§&!<§ - 1;
                  this.§;"#§ = true;
               }
            }
         }
      }
      
      protected function §7+§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:b2Vec2 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         _loc1_ = this.§"$#§ / 2 * (Math.PI / 180);
         _loc2_ = this.§@"t§.Copy();
         _loc2_.Normalize();
         var _loc3_:Number = Math.atan2(_loc2_.y,_loc2_.x) - _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this.§>#u§)
         {
            _loc6_ = (_loc5_ = this.§"$#§ / this.§>#u§ * (_loc4_ + 1)) * (Math.PI / 180);
            _loc7_ = _loc3_ + _loc6_;
            _loc8_ = -Math.cos(_loc7_) * (this.§,#d§ + Math.random() * (this.§?!n§ - this.§,#d§));
            _loc9_ = -Math.sin(_loc7_) * (this.§,#d§ + Math.random() * (this.§?!n§ - this.§,#d§));
            _loc10_ = this.§7!"§;
            if(this.§8$3§ > 0)
            {
               _loc11_ = Math.random() * this.§8$3§ + 1;
               _loc10_ = this.§7!"§ + "_" + _loc11_;
            }
            this.§+H§.§@#<§(_loc10_,§##P§.PARTICLE_GROUP_GAME_EFFECTS,§=,§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§6!S§,this.§&$'§,this.§<#-§,this.§@"s§,0,_loc8_,_loc9_,this.§?t§,this.§^]§,this.§#!1§,-1,true);
            _loc4_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§0"#§ > 0 && this.§9!a§ >= this.§&!B§ && this.§;"#§)
         {
            this.§7+§();
            --this.§0"#§;
            this.§9!a§ = 0;
         }
         else if(this.§&!<§ == 0 && this.§;"#§)
         {
            this.§;"#§ = false;
         }
         this.§9!a§ += param1;
      }
      
      private function §`"F§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
   }
}
