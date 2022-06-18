package §>!5§
{
   import §&!v§.Sprite;
   import §1!+§.b2World;
   import §6$"§.§]"o§;
   import §7!j§.§8#B§;
   import §7"&§.§"!U§;
   import §7"&§.§8"G§;
   import §7"&§.§;"&§;
   import §^$1§.§2"^§;
   import §^$1§.§7"6§;
   import flash.geom.Point;
   
   public class §'#f§ extends §4!Q§
   {
      
      public static const §,!#§:String = "timer";
       
      
      protected var §4"u§:Boolean = false;
      
      protected var §9A§:§;"&§;
      
      protected var §^!g§:Number = 0;
      
      protected var §2#R§:Boolean = false;
      
      protected var §+!O§:Point;
      
      protected var §1r§:int;
      
      private var §'#8§:Boolean;
      
      private var §2"l§:Boolean;
      
      public function §'#f§(param1:Sprite, param2:§8#B§, param3:b2World, param4:§"!U§, param5:§]"o§, param6:Number = 1.0, param7:Boolean = true)
      {
         this.§9A§ = param4 as §;"&§;
         this.§'#8§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§9A§.§-#G§(§8"G§.§^#=§);
         this.§9A§.§51§(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§9A§.§-#G§(§8"G§.§=[§);
         this.§9A§.§51§(_loc1_);
      }
      
      override protected function addTrail(param1:§-!S§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§2"l§)
            {
               _loc2_ = getBody().GetPosition().x;
               _loc3_ = getBody().GetPosition().y;
               param1.addParticle(this.§9A§.normalTrailSprite,§7"6§.§>C§,§2"^§.§""'§,_loc2_,_loc3_,-1,"",§2"^§.§;"%§);
            }
            this.§2"l§ = !this.§2"l§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§0S§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §=P§)
         {
            ++this.§1r§;
            if(this.§1r§ == 1)
            {
               this.§2#R§ = true;
               this.§9A§.§51§(§8"G§.§>"8§);
            }
            this.§+!O§ = new Point(getBody().GetPosition().x,getBody().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§0S§) : void
      {
         super.leftSensor(param1);
         if(param1 is §=P§)
         {
            --this.§1r§;
            if(this.§1r§ == 0 && !param1.§]$&§)
            {
               this.§9A§.§51§(§8"G§.§8<§);
            }
         }
      }
      
      protected function get §>$;§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§-!S§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§>$;§)
            {
               _loc5_ = this.§7F§(param2,param3);
            }
            this.§5$-§(param1,_loc5_);
            _loc6_ = this.§9A§.§-#G§(§8"G§.SPECIAL);
            this.§9A§.§51§(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §5$-§(param1:§-!S§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§9A§.§#!=§ > 0)
         {
            _loc3_ = getBody().GetPosition().x;
            _loc4_ = getBody().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§9A§.§#!=§)
            {
               _loc6_ = this.§9A§.§5#l§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§6#-§.ID_NEXT_FREE,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§-!S§) : void
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§9A§.§!$"§)
         {
            if(_loc5_ = this.§9A§.§'i§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§6#-§.ID_NEXT_FREE,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§-!S§, param3:§^"9§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§-!S§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         if(this.§9A§.§-#E§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§9A§.§!$"§)
            {
               if(_loc6_ = this.§9A§.§4#S§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§6#-§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§9A§.§!$"§)
            {
               if(_loc7_ = this.§9A§.§'i§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§6#-§.ID_NEXT_FREE,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§4"u§;
      }
      
      override public function update(param1:Number, param2:§-!S§) : void
      {
         if(this.§'#8§ && param2)
         {
            param2.addObject(this.§9A§.enterGravitationParticles,this.getBody().GetPosition().x,this.getBody().GetPosition().y,0,§6#-§.ID_NEXT_FREE,false,true,false);
            this.§'#8§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§4"u§ = true;
         }
         super.update(param1,param2);
         this.§^!g§ += param1;
         if(§ ^§)
         {
            if(this.§^!g§ > 1000 / 60)
            {
               this.§^!g§ = 0;
               this.§%",§(param2);
            }
         }
         if(this.§2#R§)
         {
            this.§2#R§ = false;
            if(param2)
            {
               param2.addObject(this.§9A§.enterGravitationParticles,this.§+!O§.x,this.§+!O§.y,0,§6#-§.ID_NEXT_FREE,false,true,false);
            }
         }
      }
      
      private function §%",§(param1:§-!S§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§9A§)
         {
            if(this.§1r§ > 0 && this.§9A§.atmosphereTailParticles)
            {
               _loc2_ = this.§9A§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§9A§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = getBody().GetPosition().x;
               _loc4_ = getBody().GetPosition().y;
               _loc5_ = getBody().GetAngle();
               param1.§5#r§(_loc2_,_loc3_,_loc4_,_loc5_,§6#-§.ID_NEXT_FREE,1,3);
            }
         }
      }
      
      protected function §7F§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = getBody().GetPosition().x;
         var _loc4_:Number = getBody().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
