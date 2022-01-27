package §5"D§
{
   import §!u§.§'!X§;
   import §!u§.§8"#§;
   import §4"@§.Sprite;
   import §6!M§.§9`§;
   import §6!M§.§=!T§;
   import §6!M§.§[M§;
   import §;`§.b2World;
   import §^e§.§^5§;
   import flash.geom.Point;
   
   public class §"!h§ extends §9!-§
   {
      
      public static const §5d§:String = "timer";
       
      
      protected var §3"$§:Boolean = false;
      
      protected var §'!m§:§[M§;
      
      protected var §<"6§:Number = 0;
      
      protected var §<!R§:Boolean = false;
      
      protected var §4O§:Point;
      
      protected var §4!_§:int;
      
      private var § G§:Boolean;
      
      private var §<",§:Boolean;
      
      public function §"!h§(param1:Sprite, param2:§^5§, param3:b2World, param4:§9`§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§'!m§ = param4 as §[M§;
         this.§ G§ = Math.random() > 0.5 ? true : false;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:String = this.§'!m§.getSound(§=!T§.§@"F§);
         this.§'!m§.playSoundLua(_loc1_);
      }
      
      override public function scream() : void
      {
         super.scream();
         var _loc1_:String = this.§'!m§.getSound(§=!T§.§[#§);
         this.§'!m§.playSoundLua(_loc1_);
      }
      
      override protected function addTrail(param1:§0!5§) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isLeavingTrail)
         {
            return false;
         }
         if(param1)
         {
            if(!this.§<",§)
            {
               _loc2_ = §9B§().GetPosition().x;
               _loc3_ = §9B§().GetPosition().y;
               param1.§'!f§(this.§'!m§.normalTrailSprite,§'!X§.§0!8§,§8"#§.§0]§,_loc2_,_loc3_,-1,"",§8"#§.§3!-§);
            }
            this.§<",§ = !this.§<",§;
         }
         return true;
      }
      
      override public function enteredSensor(param1:§<!&§) : void
      {
         super.enteredSensor(param1);
         if(param1 is §7P§)
         {
            ++this.§4!_§;
            if(this.§4!_§ == 1)
            {
               this.§<!R§ = true;
               this.§'!m§.playSoundLua(§=!T§.§-6§);
            }
            this.§4O§ = new Point(§9B§().GetPosition().x,§9B§().GetPosition().y);
         }
      }
      
      override public function leftSensor(param1:§<!&§) : void
      {
         super.leftSensor(param1);
         if(param1 is §7P§)
         {
            --this.§4!_§;
            if(this.§4!_§ == 0 && !this.§3"$§)
            {
               this.§'!m§.playSoundLua(§=!T§.§+!n§);
            }
         }
      }
      
      protected function get §-D§() : Boolean
      {
         return false;
      }
      
      override public function activateSpecialPower(param1:§0!5§, param2:Number, param3:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc4_:Boolean;
         if(_loc4_ = super.activateSpecialPower(param1,param2,param3))
         {
            _loc5_ = 0;
            if(this.§-D§)
            {
               _loc5_ = this.§`z§(param2,param3);
            }
            this.§]L§(param1,_loc5_);
            _loc6_ = this.§'!m§.getSound(§=!T§.§0Y§);
            this.§'!m§.playSoundLua(_loc6_);
         }
         return _loc4_;
      }
      
      protected function §]L§(param1:§0!5§, param2:Number = 0.0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         if(this.§'!m§.§%!u§ > 0)
         {
            _loc3_ = §9B§().GetPosition().x;
            _loc4_ = §9B§().GetPosition().y;
            _loc5_ = 0;
            while(_loc5_ < this.§'!m§.§%!u§)
            {
               _loc6_ = this.§'!m§.§?!2§(_loc5_);
               param1.addObject(_loc6_,_loc3_,_loc4_,param2,§3!3§.§'!y§,false,true,false);
               _loc5_++;
            }
         }
      }
      
      override protected function addDestructionParticles(param1:§0!5§) : void
      {
         var _loc5_:String = null;
         var _loc2_:Number = §9B§().GetPosition().x;
         var _loc3_:Number = §9B§().GetPosition().y;
         var _loc4_:int = 0;
         while(_loc4_ < this.§'!m§.§+! §)
         {
            if(_loc5_ = this.§'!m§.§,!Q§(_loc4_))
            {
               param1.addObject(_loc5_,_loc2_,_loc3_,0,§3!3§.§'!y§,false,true,false,1,true);
            }
            _loc4_++;
         }
      }
      
      override public function applyDamage(param1:Number, param2:§0!5§, param3:§6!!§, param4:Boolean = true) : Number
      {
         var _loc5_:Number = super.applyDamage(param1,param2,param3,param4);
         if(param1 >= 5)
         {
            this.addDamageParticles(param2,param1);
         }
         return _loc5_;
      }
      
      override public function addDamageParticles(param1:§0!5§, param2:int) : void
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:Number = §9B§().GetPosition().x;
         var _loc4_:Number = §9B§().GetPosition().y;
         if(this.§'!m§.§1a§ > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§'!m§.§+! §)
            {
               if(_loc6_ = this.§'!m§.§;y§(_loc5_))
               {
                  param1.addObject(_loc6_,_loc3_,_loc4_,0,§3!3§.§'!y§,false,true,false,1,true);
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < this.§'!m§.§+! §)
            {
               if(_loc7_ = this.§'!m§.§,!Q§(_loc5_))
               {
                  param1.addObject(_loc7_,_loc3_,_loc4_,0,§3!3§.§'!y§,false,true,false);
               }
               _loc5_++;
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§3"$§;
      }
      
      override public function update(param1:Number, param2:§0!5§) : void
      {
         if(this.§ G§ && param2)
         {
            param2.addObject(this.§'!m§.enterGravitationParticles,this.§9B§().GetPosition().x,this.§9B§().GetPosition().y,0,§3!3§.§'!y§,false,true,false);
            this.§ G§ = false;
         }
         if(isReadyToBeRemoved(param1))
         {
            this.§3"$§ = true;
         }
         super.update(param1,param2);
         this.§<"6§ += param1;
         if(§!!a§)
         {
            if(this.§<"6§ > 1000 / 60)
            {
               this.§<"6§ = 0;
               this.§^K§(param2);
            }
         }
         if(this.§<!R§)
         {
            this.§<!R§ = false;
            if(param2)
            {
               param2.addObject(this.§'!m§.enterGravitationParticles,this.§4O§.x,this.§4O§.y,0,§3!3§.§'!y§,false,true,false);
            }
         }
      }
      
      private function §^K§(param1:§0!5§) : void
      {
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 && this.§'!m§)
         {
            if(this.§4!_§ > 0 && this.§'!m§.atmosphereTailParticles)
            {
               _loc2_ = this.§'!m§.atmosphereTailParticles;
            }
            else
            {
               _loc2_ = this.§'!m§.normalTailParticles;
            }
            if(_loc2_)
            {
               _loc3_ = §9B§().GetPosition().x;
               _loc4_ = §9B§().GetPosition().y;
               _loc5_ = §9B§().GetAngle();
               param1.§[!R§(_loc2_,_loc3_,_loc4_,_loc5_,§3!3§.§'!y§,1,3);
            }
         }
      }
      
      protected function §`z§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = §9B§().GetPosition().x;
         var _loc4_:Number = §9B§().GetPosition().y;
         var _loc5_:Number;
         if((_loc5_ = Math.atan2(param2 - _loc4_,param1 - _loc3_)) < 0)
         {
            _loc5_ += Math.PI * 2;
         }
         return _loc5_;
      }
   }
}
