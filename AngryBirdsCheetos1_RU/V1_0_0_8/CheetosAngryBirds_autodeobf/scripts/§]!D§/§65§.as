package §]!D§
{
   import §1!§.§@!Q§;
   import §8!`§.§4J§;
   import §;!Q§.Sprite;
   import §?0§.b2World;
   import §`;§.§5i§;
   import §`;§.§[E§;
   
   public class §65§ extends §@!]§
   {
       
      
      private var §3!7§:int = 0;
      
      public function §65§(param1:§?!9§, param2:Sprite, param3:b2World, param4:§4J§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §@G§ = param12;
         §0g§ = param13;
      }
      
      override public function addDestructionParticles(param1:§5i§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§@!7§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§`T§.mW * §4J§.§<W§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§`T§.mH * §4J§.§<W§) + Math.random() * -_loc8_ * 2;
            if(§@G§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §0g§);
               param1.§0z§(§@G§ + "_" + _loc9_,§[E§.§&z§,§5i§.§-!D§,§[E§.§!`§,§^!_§().GetPosition().x + _loc7_,§^!_§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2!<§(§4u§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§[E§.§&z§,§5i§.§-!D§,§[E§.§!`§,§^!_§().GetPosition().x + _loc7_,§^!_§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§2!<§(§4u§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§5i§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§4J§ = §@!Q§.§7l§;
         if(§5h§ < §!e§ || §^!_§() == null)
         {
            _loc1_.§8P§(this);
            _loc1_.§7,§ = false;
            return;
         }
         var _loc2_:Number = x * §4J§.§<W§;
         var _loc3_:Number = y * §4J§.§<W§;
         var _loc4_:String = §[E§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§3!7§ == 1)
         {
            _loc4_ = §[E§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§3!7§ == 2)
         {
            _loc4_ = §[E§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§3!7§ = (this.§3!7§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§5i§.§;?§,§[E§.§?g§,_loc2_,_loc3_,-1,"",§[E§.§?a§);
      }
   }
}
