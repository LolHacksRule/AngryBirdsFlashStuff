package §]">§
{
   import §"!&§.§+W§;
   import §"!&§.§+g§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §1"H§.§=!3§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   
   public class §!!r§ extends §6!y§
   {
      
      public static const §!!p§:String = "TazosBird";
       
      
      private var §2"G§:Boolean = false;
      
      private var §[c§:§=!3§;
      
      private var §%"1§:Boolean = false;
      
      private var § !V§:Number;
      
      private var §9W§:§+g§;
      
      public function §!!r§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         this.§9W§ = param4 as §+g§;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         if(this.§%"1§)
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
         if(§-?§)
         {
            return true;
         }
         return super.removeOnNextUpdate;
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         super.update(param1,param2);
         if(this.§%"1§)
         {
            this.§ !V§ -= param1;
            if(this.§ !V§ <= 0)
            {
               this.activateSpecialPower(param2,x,y);
            }
         }
         if(§?!d§ && !this.§2"G§)
         {
            this.§2"G§ = true;
            §<!O§.playSound("tazos_fly_loop","6",100,1);
         }
         if(!this.§[c§ && param2)
         {
            this.§[c§ = §=!3§(param2.addObject(§=!3§.§!!p§,x / §^g§.§5!-§,y / §^g§.§5!-§,0,§-%§.§;!J§));
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         if(!this.§%"1§)
         {
            this.§ !V§ = this.§9W§.specialActivationDelay;
            this.§%"1§ = true;
         }
         if(this.§2"G§)
         {
            this.§2"G§ = false;
            §<!O§.§,!z§("6");
         }
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         super.render(param1,param2,param3);
         if(this.§[c§)
         {
            this.§[c§.§[!T§(x,y,this.§%"1§);
         }
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         if(this.§2"G§)
         {
            this.§2"G§ = false;
            §<!O§.§,!z§("6");
         }
         if(!§-?§)
         {
            this.makeExplosion(param1);
            native(param1);
         }
         super.updateBeforeRemoving(param1);
      }
      
      private function makeExplosion(param1:§;U§) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:§<!=§ = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         if(this.§9W§.§2V§ > 0)
         {
            _loc2_ = §^!z§().GetPosition().x;
            _loc3_ = §^!z§().GetPosition().y;
            _loc5_ = 0;
            _loc8_ = 0;
            while(_loc8_ < this.§9W§.§2V§)
            {
               _loc9_ = this.§9W§.§"!u§(_loc8_);
               _loc6_ = Math.cos(_loc5_);
               _loc7_ = Math.sin(_loc5_);
               (_loc4_ = param1.addObject(_loc9_,_loc2_ + _loc6_ * this.§9W§.spawnDistance,_loc3_ + _loc7_ * this.§9W§.spawnDistance,0,§-%§.§;!J§,false,true,false)).§^!z§().SetLinearVelocity(new b2Vec2(_loc6_ * this.§9W§.spawnedObjectSpeed * (1 + Math.random()),_loc7_ * this.§9W§.spawnedObjectSpeed * (1 + Math.random())));
               _loc5_ += Math.PI * 2 / this.§9W§.§2V§;
               _loc8_++;
            }
         }
         if(param1)
         {
            param1.§6!N§(_loc2_,_loc3_,§2"!§.explosionRadius,§2"!§.explosionForce,§2"!§.explosionDamageRadius,§2"!§.explosionDamage);
         }
      }
      
      override public function dispose() : void
      {
         if(this.§[c§)
         {
            this.§[c§.dispose();
            this.§[c§ = null;
         }
         super.dispose();
      }
   }
}
