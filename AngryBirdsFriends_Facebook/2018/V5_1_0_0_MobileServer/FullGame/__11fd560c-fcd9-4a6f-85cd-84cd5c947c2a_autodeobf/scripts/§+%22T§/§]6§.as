package §+"T§
{
   import § "%§.b2Vec2;
   import §!#"§.§4[§;
   import §!'§.§@>§;
   import §!'§.§[p§;
   import §8§.§&#V§;
   import §@!M§.§!"p§;
   
   public class §]6§
   {
       
      
      private var §9"R§:int;
      
      private var §-#`§:Array;
      
      private var §8#S§:String;
      
      private var §'$;§:String;
      
      private var §continue§:int;
      
      private var §"!>§:Number;
      
      private var §9v§:Number;
      
      private var §%"w§:Number;
      
      private var §?!$§:Number;
      
      private var §6"&§:int;
      
      protected var §8u§:Number;
      
      protected var §!#§:Number;
      
      private var §^$,§:§&#V§;
      
      private var §4#;§:§4[§;
      
      private var §;8§:Number = 0;
      
      private var §<#9§:Number = 0;
      
      private var §1c§:Boolean = false;
      
      private var §=#z§:int = 0;
      
      private var §^#5§:Number = 1.0;
      
      private var §5#6§:Number = 0;
      
      private var §,#J§:String = "";
      
      private var §@"%§:Number;
      
      private var §]#8§:Number;
      
      private var §"!4§:int = 0;
      
      private var §+"f§:Number = 0;
      
      private var §;y§:b2Vec2;
      
      public function §]6§()
      {
         this.§;y§ = new b2Vec2();
         super();
      }
      
      public function §##g§(param1:Array, param2:String) : void
      {
         this.§-#`§ = param1;
         this.§8#S§ = param2;
      }
      
      public function §^!L§(param1:String, param2:int, param3:Number, param4:Number = 360, param5:Number = 1.0, param6:Number = 1.0, param7:int = 0, param8:Number = 0, param9:int = 2, param10:String = "", param11:Number = 1, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:int = 0) : void
      {
         this.§'$;§ = param1;
         this.§continue§ = param2;
         this.§"!>§ = param3;
         this.§9v§ = param4;
         this.§%"w§ = param5;
         this.§?!$§ = param6;
         this.§6"&§ = param7;
         this.§<#9§ = param8;
         this.§9"R§ = param9;
         this.§,#J§ = param10;
         this.§^#5§ = param11;
         this.§5#6§ = param12;
         this.§@"%§ = param13;
         this.§]#8§ = param14;
         this.§"!4§ = param15;
      }
      
      public function §8$4§(param1:Number, param2:Number, param3:§&#V§, param4:Number, param5:Number, param6:Number = 0, param7:b2Vec2 = null) : void
      {
         var _loc8_:int = 0;
         if(param1 / param2 > this.§9"R§)
         {
            if(this.§-#`§)
            {
               _loc8_ = Math.random() * this.§-#`§.length;
               §!"p§.playSound(this.§-#`§[_loc8_],this.§8#S§);
            }
            this.§8u§ = param4;
            this.§!#§ = param5;
            this.§+"f§ = param6;
            this.§;y§ = param7;
            this.§^$,§ = param3;
            if(this.§'$;§)
            {
               if(this.§continue§ > 0)
               {
                  this.§;!f§();
                  this.§=#z§ = this.§6"&§ - 1;
                  this.§1c§ = true;
               }
            }
         }
      }
      
      protected function §;!f§() : void
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
         _loc1_ = this.§9v§ / 2 * (Math.PI / 180);
         _loc2_ = this.§;y§.Copy();
         _loc2_.Normalize();
         var _loc3_:Number = Math.atan2(_loc2_.y,_loc2_.x) - _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this.§continue§)
         {
            _loc6_ = (_loc5_ = this.§9v§ / this.§continue§ * (_loc4_ + 1)) * (Math.PI / 180);
            _loc7_ = _loc3_ + _loc6_;
            _loc8_ = -Math.cos(_loc7_) * (this.§%"w§ + Math.random() * (this.§?!$§ - this.§%"w§));
            _loc9_ = -Math.sin(_loc7_) * (this.§%"w§ + Math.random() * (this.§?!$§ - this.§%"w§));
            _loc10_ = this.§'$;§;
            if(this.§"!4§ > 0)
            {
               _loc11_ = Math.random() * this.§"!4§ + 1;
               _loc10_ = this.§'$;§ + "_" + _loc11_;
            }
            this.§^$,§.§4#C§(_loc10_,§[p§.PARTICLE_GROUP_GAME_EFFECTS,§@>§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§5#6§,this.§8u§,this.§!#§,this.§"!>§,0,_loc8_,_loc9_,this.§@"%§,this.§]#8§,this.§^#5§,-1,true);
            _loc4_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§=#z§ > 0 && this.§;8§ >= this.§<#9§ && this.§1c§)
         {
            this.§;!f§();
            --this.§=#z§;
            this.§;8§ = 0;
         }
         else if(this.§6"&§ == 0 && this.§1c§)
         {
            this.§1c§ = false;
         }
         this.§;8§ += param1;
      }
      
      private function §^#A§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
   }
}
