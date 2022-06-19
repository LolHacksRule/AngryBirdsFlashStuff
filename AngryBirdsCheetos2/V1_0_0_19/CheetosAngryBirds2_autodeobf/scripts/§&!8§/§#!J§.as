package §&!8§
{
   import § o§.b2World;
   import §,§.§ p§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §#!J§ extends §[g§
   {
      
      public static const §;!H§:int = 1750;
       
      
      private var §+§:int = 0;
      
      public function §#!J§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §]'§ = param12;
         §+W§ = param13;
      }
      
      override public function addDestructionParticles(param1:§do§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§>!+§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§5d§.mW * § p§.§]!E§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§5d§.mH * § p§.§]!E§) + Math.random() * -_loc8_ * 2;
            if(§]'§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §+W§);
               param1.§2!L§(§]'§ + "_" + _loc9_,§7!?§.§0!;§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x + _loc7_,§`e§().GetPosition().y + _loc8_,§;!H§ + Math.random() * 500,"",§7R§(§>p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§7!?§.§0!;§,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x + _loc7_,§`e§().GetPosition().y + _loc8_,§;!H§ + Math.random() * 500,"",§7R§(§>p§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§do§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§ p§ = §@!Z§.§;!,§;
         if(§+_§ < § !G§ || §`e§() == null)
         {
            _loc1_.§,3§(this);
            _loc1_.§;$§ = false;
            return;
         }
         var _loc2_:Number = x * § p§.§]!E§;
         var _loc3_:Number = y * § p§.§]!E§;
         var _loc4_:String = §7!?§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§+§ == 1)
         {
            _loc4_ = §7!?§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§+§ == 2)
         {
            _loc4_ = §7!?§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§+§ = (this.§+§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§do§.§[N§,§7!?§.§<!h§,_loc2_,_loc3_,-1,"",§7!?§.§7^§);
      }
   }
}
