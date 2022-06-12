package §^!_§
{
   import §&$3§.§7$C§;
   import §6!3§.§8$B§;
   import §7"p§.§6!9§;
   import §7"p§.§<#]§;
   import §8#K§.§3Z§;
   import §?!C§.b2Vec2;
   
   public class §7"m§
   {
       
      
      private var § $$§:int;
      
      private var §^$@§:Array;
      
      private var §0c§:String;
      
      private var §5!P§:String;
      
      private var §"#J§:int;
      
      private var §&$!§:Number;
      
      private var §9"c§:Number;
      
      private var §>#5§:Number;
      
      private var §1!@§:Number;
      
      private var §7,§:int;
      
      protected var §["d§:Number;
      
      protected var §%#z§:Number;
      
      private var § "F§:§8$B§;
      
      private var §;#o§:§7$C§;
      
      private var §2n§:Number = 0;
      
      private var §^"c§:Number = 0;
      
      private var §!"L§:Boolean = false;
      
      private var §-C§:int = 0;
      
      private var §5>§:Number = 1.0;
      
      private var §=c§:Number = 0;
      
      private var §>!G§:String = "";
      
      private var §5#Z§:Number;
      
      private var §'$5§:Number;
      
      private var §@"s§:int = 0;
      
      private var §6!P§:Number = 0;
      
      private var §>"K§:b2Vec2;
      
      public function §7"m§()
      {
         this.§>"K§ = new b2Vec2();
         super();
      }
      
      public function §!$+§(param1:Array, param2:String) : void
      {
         this.§^$@§ = param1;
         this.§0c§ = param2;
      }
      
      public function §%#@§(param1:String, param2:int, param3:Number, param4:Number = 360, param5:Number = 1.0, param6:Number = 1.0, param7:int = 0, param8:Number = 0, param9:int = 2, param10:String = "", param11:Number = 1, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:int = 0) : void
      {
         this.§5!P§ = param1;
         this.§"#J§ = param2;
         this.§&$!§ = param3;
         this.§9"c§ = param4;
         this.§>#5§ = param5;
         this.§1!@§ = param6;
         this.§7,§ = param7;
         this.§^"c§ = param8;
         this.§ $$§ = param9;
         this.§>!G§ = param10;
         this.§5>§ = param11;
         this.§=c§ = param12;
         this.§5#Z§ = param13;
         this.§'$5§ = param14;
         this.§@"s§ = param15;
      }
      
      public function §""E§(param1:Number, param2:Number, param3:§8$B§, param4:Number, param5:Number, param6:Number = 0, param7:b2Vec2 = null) : void
      {
         var _loc8_:int = 0;
         if(param1 / param2 > this.§ $$§)
         {
            if(this.§^$@§)
            {
               _loc8_ = Math.random() * this.§^$@§.length;
               §3Z§.playSound(this.§^$@§[_loc8_],this.§0c§);
            }
            this.§["d§ = param4;
            this.§%#z§ = param5;
            this.§6!P§ = param6;
            this.§>"K§ = param7;
            this.§ "F§ = param3;
            if(this.§5!P§)
            {
               if(this.§"#J§ > 0)
               {
                  this.§@#Z§();
                  this.§-C§ = this.§7,§ - 1;
                  this.§!"L§ = true;
               }
            }
         }
      }
      
      protected function §@#Z§() : void
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
         _loc1_ = this.§9"c§ / 2 * (Math.PI / 180);
         _loc2_ = this.§>"K§.Copy();
         _loc2_.Normalize();
         var _loc3_:Number = Math.atan2(_loc2_.y,_loc2_.x) - _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this.§"#J§)
         {
            _loc6_ = (_loc5_ = this.§9"c§ / this.§"#J§ * (_loc4_ + 1)) * (Math.PI / 180);
            _loc7_ = _loc3_ + _loc6_;
            _loc8_ = -Math.cos(_loc7_) * (this.§>#5§ + Math.random() * (this.§1!@§ - this.§>#5§));
            _loc9_ = -Math.sin(_loc7_) * (this.§>#5§ + Math.random() * (this.§1!@§ - this.§>#5§));
            _loc10_ = this.§5!P§;
            if(this.§@"s§ > 0)
            {
               _loc11_ = Math.random() * this.§@"s§ + 1;
               _loc10_ = this.§5!P§ + "_" + _loc11_;
            }
            this.§ "F§.§9!_§(_loc10_,§<#]§.PARTICLE_GROUP_GAME_EFFECTS,§6!9§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§=c§,this.§["d§,this.§%#z§,this.§&$!§,0,_loc8_,_loc9_,this.§5#Z§,this.§'$5§,this.§5>§,-1,true);
            _loc4_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§-C§ > 0 && this.§2n§ >= this.§^"c§ && this.§!"L§)
         {
            this.§@#Z§();
            --this.§-C§;
            this.§2n§ = 0;
         }
         else if(this.§7,§ == 0 && this.§!"L§)
         {
            this.§!"L§ = false;
         }
         this.§2n§ += param1;
      }
      
      private function §=#F§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
   }
}
