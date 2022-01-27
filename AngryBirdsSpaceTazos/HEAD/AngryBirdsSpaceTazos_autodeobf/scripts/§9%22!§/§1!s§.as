package §9"!§
{
   import §&!]§.Sprite;
   import §1"?§.§4R§;
   import §1"?§.§switch§;
   import §3>§.§ !9§;
   import §3>§.§%5§;
   import §3>§.§1!;§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import flash.geom.Point;
   
   public class §1!s§ extends §#K§
   {
      
      public static const §-"&§:String = "timer";
       
      
      protected var §`3§:Boolean = false;
      
      protected var §>!+§:§ !9§;
      
      protected var §%>§:Number = 0;
      
      protected var §]">§:Boolean = false;
      
      protected var §8!&§:Point;
      
      protected var §5"A§:int;
      
      private var §"!0§:Boolean;
      
      private var §0q§:Boolean;
      
      public function §1!s§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§1!;§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§>!+§ = param4 as § !9§;
         this.§"!0§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§>!+§.getSound(§%5§.§>^§);
         this.§>!+§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§>!+§.getSound(§%5§.§%!m§);
         this.§>!+§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§0!s§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§0q§)
            {
               _loc2_ = §`I§().GetPosition().x;
               _loc3_ = §`I§().GetPosition().y;
               param1.§'"-§(this.§>!+§.normalTrailSprite,§switch§.§^"&§,§4R§.§-F§,_loc2_,_loc3_,-1,"",§4R§.§!!8§);
            }
            this.§0q§ = !this.§0q§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§]#§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §9"$§)
         {
            ++this.§5"A§;
            if(this.§5"A§ == 1)
            {
               this.§]">§ = true;
               this.§>!+§.playSoundLua(§%5§.§+u§);
            }
            this.§8!&§ = new Point(§`I§().GetPosition().x,§`I§().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§]#§) : void
      {
         super.leftSensor(param1);
         if(param1 is §9"$§)
         {
            --this.§5"A§;
            if(this.§5"A§ == 0 && !this.§`3§)
            {
               this.§>!+§.playSoundLua(§%5§.§7!f§);
            }
         }
      }
      
      protected function get §<!4§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§0!s§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§<!4§)
            {
               _loc5_ = this.§&]§(param2,param3);
            }
            this.§5'§(param1,_loc5_);
            _loc6_ = this.§>!+§.getSound(§%5§.§&7§);
            this.§>!+§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §5'§(param1:§0!s§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§>!+§.§`O§ > 0)
         {
            _loc3_ = §`I§().GetPosition().x;
            _loc4_ = §`I§().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§>!+§.§`O§)
            {
               _loc6_ = this.§>!+§.§>!m§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§"" §.§%A§,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§0!s§) : void
      {
         var _loc5_:String = null;
         var _loc2_:Number = §`I§().GetPosition().x;
         var _loc3_:Number = §`I§().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§>!+§.§2!<§)
         {
            if(_loc5_ = this.§>!+§.§7+§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§"" §.§%A§,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§0!s§, param3:§^"3§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§0!s§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = §`I§().GetPosition().x;
         var _loc4_:Number = §`I§().GetPosition().y;
         if(this.§>!+§.§5""§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§>!+§.§2!<§)
            {
               if(_loc6_ = this.§>!+§.§ !i§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§"" §.§%A§,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§>!+§.§2!<§)
            {
               if(_loc7_ = this.§>!+§.§7+§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§"" §.§%A§,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§`3§;
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         if(this.§"!0§ && param2)
         {
            param2.addObject(this.§>!+§.enterGravitationParticles,this.§`I§().GetPosition().x,this.§`I§().GetPosition().y,0,§"" §.§%A§,false,true,false);
            this.§"!0§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§`3§ = true;
         }
         super.update(param1,param2);
         this.§%>§ += param1;
         if(§8"?§)
         {
            if(this.§%>§ > 1000 / 60)
            {
               this.§%>§ = 0;
               this.§4!H§(param2);
            }
         }
         if(this.§]">§)
         {
            this.§]">§ = false;
            if(param2)
            {
               param2.addObject(this.§>!+§.enterGravitationParticles,this.§8!&§.x,this.§8!&§.y,0,§"" §.§%A§,false,true,false);
            }
         }
      }
      
      private function §4!H§(param1:§0!s§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§>!+§)
         {
            if(this.§5"A§ > 0 && this.§>!+§.atmosphereTailParticles)
            {
               _loc2_ = this.§>!+§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§>!+§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = §`I§().GetPosition().x;
               _loc4_ = §`I§().GetPosition().y;
               _loc5_ = §`I§().GetAngle();
               param1.§'"H§(_loc2_,_loc3_,_loc4_,_loc5_,§"" §.§%A§,1,3);
            }
         }
      }
      
      protected function §&]§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = §`I§().GetPosition().x;
         var _loc4_:Number = §`I§().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
