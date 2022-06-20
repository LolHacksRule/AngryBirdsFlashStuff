package §%!f§
{
   import §%!9§.b2Vec2;
   import §1#W§.§!#&§;
   import §8Z§.§-#C§;
   import §>!5§.§-!S§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   
   public class §5!O§
   {
       
      
      private var §@#C§:int;
      
      private var §package§:Array;
      
      private var §+A§:String;
      
      private var §=#Q§:String;
      
      private var §&!B§:int;
      
      private var §+_§:Number;
      
      private var §;"A§:Number;
      
      private var §""r§:Number;
      
      private var §-!!§:Number;
      
      private var §'c§:int;
      
      protected var §?!l§:Number;
      
      protected var §`"T§:Number;
      
      private var §^"8§:§-!S§;
      
      private var §'!m§:§-#C§;
      
      private var §9u§:Number = 0;
      
      private var §]$;§:Number = 0;
      
      private var §2!n§:Boolean = false;
      
      private var §8"M§:int = 0;
      
      private var § "A§:Number = 1.0;
      
      private var §]#;§:Number = 0;
      
      private var §+!%§:String = "";
      
      private var §+]§:Number;
      
      private var §,!H§:Number;
      
      private var §5#X§:int = 0;
      
      private var §-#;§:Number = 0;
      
      private var § !]§:b2Vec2;
      
      public function §5!O§()
      {
         this.§ !]§ = new b2Vec2();
         super();
      }
      
      public function §?#&§(param1:Array, param2:String) : void
      {
         this.§package§ = param1;
         this.§+A§ = param2;
      }
      
      public function § !8§(param1:String, param2:int, param3:Number, param4:Number = 360, param5:Number = 1.0, param6:Number = 1.0, param7:int = 0, param8:Number = 0, param9:int = 2, param10:String = "", param11:Number = 1, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:int = 0) : void
      {
         this.§=#Q§ = param1;
         this.§&!B§ = param2;
         this.§+_§ = param3;
         this.§;"A§ = param4;
         this.§""r§ = param5;
         this.§-!!§ = param6;
         this.§'c§ = param7;
         this.§]$;§ = param8;
         this.§@#C§ = param9;
         this.§+!%§ = param10;
         this.§ "A§ = param11;
         this.§]#;§ = param12;
         this.§+]§ = param13;
         this.§,!H§ = param14;
         this.§5#X§ = param15;
      }
      
      public function §4"l§(param1:Number, param2:Number, param3:§-!S§, param4:Number, param5:Number, param6:Number = 0, param7:b2Vec2 = null) : void
      {
         var _loc8_:int = 0;
         if(param1 / param2 > this.§@#C§)
         {
            if(this.§package§)
            {
               _loc8_ = Math.random() * this.§package§.length;
               §!#&§.playSound(this.§package§[_loc8_],this.§+A§);
            }
            this.§?!l§ = param4;
            this.§`"T§ = param5;
            this.§-#;§ = param6;
            this.§ !]§ = param7;
            this.§^"8§ = param3;
            if(this.§=#Q§)
            {
               if(this.§&!B§ > 0)
               {
                  this.§>"i§();
                  this.§8"M§ = this.§'c§ - 1;
                  this.§2!n§ = true;
               }
            }
         }
      }
      
      protected function §>"i§() : void
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
         _loc1_ = this.§;"A§ / 2 * (Math.PI / 180);
         _loc2_ = this.§ !]§.Copy();
         _loc2_.Normalize();
         var _loc3_:Number = Math.atan2(_loc2_.y,_loc2_.x) - _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this.§&!B§)
         {
            _loc6_ = (_loc5_ = this.§;"A§ / this.§&!B§ * (_loc4_ + 1)) * (Math.PI / 180);
            _loc7_ = _loc3_ + _loc6_;
            _loc8_ = -Math.cos(_loc7_) * (this.§""r§ + Math.random() * (this.§-!!§ - this.§""r§));
            _loc9_ = -Math.sin(_loc7_) * (this.§""r§ + Math.random() * (this.§-!!§ - this.§""r§));
            _loc10_ = this.§=#Q§;
            if(this.§5#X§ > 0)
            {
               _loc11_ = Math.random() * this.§5#X§ + 1;
               _loc10_ = this.§=#Q§ + "_" + _loc11_;
            }
            this.§^"8§.§``§(_loc10_,§7"6§.PARTICLE_GROUP_GAME_EFFECTS,§2"^§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§]#;§,this.§?!l§,this.§`"T§,this.§+_§,0,_loc8_,_loc9_,this.§+]§,this.§,!H§,this.§ "A§,-1,true);
            _loc4_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§8"M§ > 0 && this.§9u§ >= this.§]$;§ && this.§2!n§)
         {
            this.§>"i§();
            --this.§8"M§;
            this.§9u§ = 0;
         }
         else if(this.§'c§ == 0 && this.§2!n§)
         {
            this.§2!n§ = false;
         }
         this.§9u§ += param1;
      }
      
      private function §#Z§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
   }
}
