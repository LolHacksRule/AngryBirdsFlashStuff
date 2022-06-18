package §["9§
{
   import §%A§.§'Y§;
   import §%A§.§>F§;
   import §-!!§.§ #'§;
   import §6§.§]%§;
   import §>"9§.§[#%§;
   import §`# §.b2Vec2;
   
   public class §`"i§
   {
       
      
      private var §9t§:int;
      
      private var §#!F§:Array;
      
      private var §4f§:String;
      
      private var §!"h§:String;
      
      private var §3!V§:int;
      
      private var §'"Q§:Number;
      
      private var §?+§:Number;
      
      private var §"`§:Number;
      
      private var §7#E§:Number;
      
      private var §9#T§:int;
      
      protected var §-##§:Number;
      
      protected var §0#[§:Number;
      
      private var §3#T§:§ #'§;
      
      private var §1?§:§]%§;
      
      private var § #!§:Number = 0;
      
      private var §4#u§:Number = 0;
      
      private var §#",§:Boolean = false;
      
      private var §<#R§:int = 0;
      
      private var §6z§:Number = 1.0;
      
      private var §&!?§:Number = 0;
      
      private var §'!_§:String = "";
      
      private var §=D§:Number;
      
      private var §%"b§:Number;
      
      private var §9"R§:int = 0;
      
      private var §1!_§:Number = 0;
      
      private var §case §:b2Vec2;
      
      public function §`"i§()
      {
         this.§case § = new b2Vec2();
         super();
      }
      
      public function §?#P§(param1:Array, param2:String) : void
      {
         this.§#!F§ = param1;
         this.§4f§ = param2;
      }
      
      public function §?A§(param1:String, param2:int, param3:Number, param4:Number = 360, param5:Number = 1.0, param6:Number = 1.0, param7:int = 0, param8:Number = 0, param9:int = 2, param10:String = "", param11:Number = 1, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:int = 0) : void
      {
         this.§!"h§ = param1;
         this.§3!V§ = param2;
         this.§'"Q§ = param3;
         this.§?+§ = param4;
         this.§"`§ = param5;
         this.§7#E§ = param6;
         this.§9#T§ = param7;
         this.§4#u§ = param8;
         this.§9t§ = param9;
         this.§'!_§ = param10;
         this.§6z§ = param11;
         this.§&!?§ = param12;
         this.§=D§ = param13;
         this.§%"b§ = param14;
         this.§9"R§ = param15;
      }
      
      public function §;# §(param1:Number, param2:Number, param3:§ #'§, param4:Number, param5:Number, param6:Number = 0, param7:b2Vec2 = null) : void
      {
         var _loc8_:int = 0;
         if(param1 / param2 > this.§9t§)
         {
            if(this.§#!F§)
            {
               _loc8_ = Math.random() * this.§#!F§.length;
               §[#%§.playSound(this.§#!F§[_loc8_],this.§4f§);
            }
            this.§-##§ = param4;
            this.§0#[§ = param5;
            this.§1!_§ = param6;
            this.§case § = param7;
            this.§3#T§ = param3;
            if(this.§!"h§)
            {
               if(this.§3!V§ > 0)
               {
                  this.§`P§();
                  this.§<#R§ = this.§9#T§ - 1;
                  this.§#",§ = true;
               }
            }
         }
      }
      
      protected function §`P§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         _loc1_ = this.§?+§ / 2 * (Math.PI / 180);
         _loc2_ = this.§case §.Copy();
         _loc2_.Normalize();
         var _loc3_:Number = Math.atan2(_loc2_.y,_loc2_.x) - _loc1_;
         var _loc4_:int = 0;
         while(_loc4_ < this.§3!V§)
         {
            _loc6_ = this.§?+§ / this.§3!V§ * (_loc4_ + 1) * (Math.PI / 180);
            _loc7_ = _loc3_ + _loc6_;
            _loc8_ = -Math.cos(_loc7_) * (this.§"`§ + Math.random() * (this.§7#E§ - this.§"`§));
            _loc9_ = -Math.sin(_loc7_) * (this.§"`§ + Math.random() * (this.§7#E§ - this.§"`§));
            _loc10_ = this.§!"h§;
            if(this.§9"R§ > 0)
            {
               _loc11_ = Math.random() * this.§9"R§ + 1;
               _loc10_ = this.§!"h§ + "_" + _loc11_;
            }
            this.§3#T§.§];§(_loc10_,§>F§.PARTICLE_GROUP_GAME_EFFECTS,§'Y§.PARTICLE_TYPE_KINETIC_PARTICLE,this.§&!?§,this.§-##§,this.§0#[§,this.§'"Q§,0,_loc8_,_loc9_,this.§=D§,this.§%"b§,this.§6z§,-1,true);
            _loc4_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§<#R§ > 0 && this.§ #!§ >= this.§4#u§ && this.§#",§)
         {
            this.§`P§();
            --this.§<#R§;
            this.§ #!§ = 0;
         }
         else if(this.§9#T§ == 0 && this.§#",§)
         {
            this.§#",§ = false;
         }
         this.§ #!§ += param1;
      }
      
      private function §3#;§(param1:Number) : Number
      {
         return (360 + param1 * 180 / Math.PI % 360) % 360;
      }
   }
}
