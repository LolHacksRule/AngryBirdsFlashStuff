package §[,§
{
   import §#!X§.b2World;
   import §&!S§.b2Vec2;
   import §'!&§.Sprite;
   import §,7§.§>3§;
   import §8o§.§]!U§;
   import §9!G§.§"!S§;
   import §;"=§.§1!7§;
   import §;"=§.§[e§;
   import §?!<§.§'!1§;
   
   public class § !B§ extends §@9§
   {
      
      public static const §2_§:String = "TazosBird";
       
      
      private var §4!f§:Boolean = false;
      
      private var §?#§:§>3§;
      
      private var §4C§:Boolean = false;
      
      private var §"!t§:Number;
      
      private var §&!D§:§1!7§;
      
      public function § !B§(param1:Sprite, param2:§]!U§, param3:b2World, param4:§[e§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§&!D§ = param4 as §1!7§;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§class§, param2:Number, param3:Number) : Boolean
      {
         if(this.§4C§)
         {
            super.activateSpecialPower(param1,param2,param3);
            this.makeExplosion(param1);
            return true;
         }
         if(!super.activateSpecialPower(param1,param2,param3))
         {
            return false;
         }
         this.makeExplosion(param1);
         return true;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         return true;
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(set)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function update(param1:Number, param2:§class§) : void
      {
         super.update(param1,param2);
         if(this.§4C§)
         {
            this.§"!t§ -= param1;
            if(this.§"!t§ <= 0)
            {
               this.activateSpecialPower(param2,x,y);
            }
         }
         if(§!!K§ && !this.§4!f§)
         {
            this.§4!f§ = true;
            §"!S§.playSound("tazos_fly_loop","6",100,1);
         }
         if(!this.§?#§ && param2)
         {
            this.§?#§ = §>3§(param2.addObject(§>3§.§2_§,x / §'!1§.§<!@§,y / §'!1§.§<!@§,0,§]j§.§4"1§));
         }
      }
      
      override public function applyDamage(param1:Number, param2:§class§, param3:§5,§, param4:Boolean = true) : Number
      {
         if(!this.§4C§)
         {
            this.§"!t§ = this.§&!D§.specialActivationDelay;
            this.§4C§ = true;
         }
         if(this.§4!f§)
         {
            this.§4!f§ = false;
            §"!S§.§]R§("6");
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§?#§)
         {
            this.§?#§.§@!h§(x,y,this.§4C§);
         }
      }
      
      override public function updateBeforeRemoving(param1:§class§) : void
      {
         if(this.§4!f§)
         {
            this.§4!f§ = false;
            §"!S§.§]R§("6");
         }
         if(!set)
         {
            this.makeExplosion(param1);
            §""#§(param1);
         }
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§class§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:§1d§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         if(this.§&!D§.§!!%§ > 0)
         {
            _loc2_ = § <§().GetPosition().x;
            _loc3_ = § <§().GetPosition().y;
            _loc5_ = 0;
            _loc8_ = 0;
            while(_loc8_ < this.§&!D§.§!!%§)
            {
               _loc9_ = this.§&!D§.§4v§(_loc8_);
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               (_loc4_ = param1.addObject(_loc9_,_loc2_ + _loc6_ * this.§&!D§.spawnDistance,_loc3_ + _loc7_ * this.§&!D§.spawnDistance,0,§]j§.§4"1§,false,true,false)).§ <§().SetLinearVelocity(new b2Vec2(_loc6_ * this.§&!D§.spawnedObjectSpeed * (1 + Math.random()),_loc7_ * this.§&!D§.spawnedObjectSpeed * (1 + Math.random())));
               _loc5_ += Math.PI * 2 / this.§&!D§.§!!%§;
               _loc8_++;
            }
         }
         if(param1)
         {
            param1.§[#§(_loc2_,_loc3_,§^B§.explosionRadius,§^B§.explosionForce,§^B§.explosionDamageRadius,§^B§.explosionDamage);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?#§)
         {
            this.§?#§.dispose();
            this.§?#§ = null;
         }
         super.dispose();
      }
   }
}
