package §3F§
{
   import §3H§.Sprite;
   import §7E§.§@u§;
   import §7E§.§^A§;
   import §>2§.§4h§;
   import §@w§.§2G§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §[!4§ extends §2!3§
   {
      
      public static const §]c§:int = 1750;
       
      
      private var §1!9§:int = 0;
      
      public function §[!4§(param1:§0z§, param2:Sprite, param3:b2World, param4:§4h§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §,=§ = param12;
         §`N§ = param13;
      }
      
      override public function addDestructionParticles(param1:§@u§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§3s§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§^! §.mW * §4h§.§-9§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§^! §.mH * §4h§.§-9§) + Math.random() * -_loc8_ * 2;
            if(§,=§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §`N§);
               param1.§+V§(§,=§ + "_" + _loc9_,§^A§.§1E§,§@u§.§&&§,§^A§.§<!$§,§?!M§().GetPosition().x + _loc7_,§?!M§().GetPosition().y + _loc8_,§]c§ + Math.random() * 500,"",§,_§(§9E§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§^A§.§1E§,§@u§.§&&§,§^A§.§<!$§,§?!M§().GetPosition().x + _loc7_,§?!M§().GetPosition().y + _loc8_,§]c§ + Math.random() * 500,"",§,_§(§9E§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§@u§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§4h§ = §2G§.§7!,§;
         if(§7^§ < §0-§ || §?!M§() == null)
         {
            _loc1_.§?3§(this);
            _loc1_.§5l§ = false;
            return;
         }
         var _loc2_:Number = x * §4h§.§-9§;
         var _loc3_:Number = y * §4h§.§-9§;
         var _loc4_:String = §^A§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§1!9§ == 1)
         {
            _loc4_ = §^A§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§1!9§ == 2)
         {
            _loc4_ = §^A§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§1!9§ = (this.§1!9§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§@u§.§+1§,§^A§.§@!J§,_loc2_,_loc3_,-1,"",§^A§.§;!5§);
      }
   }
}
