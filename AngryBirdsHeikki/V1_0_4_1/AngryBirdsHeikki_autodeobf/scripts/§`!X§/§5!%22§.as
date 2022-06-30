package §`!X§
{
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §?!P§.§@@§;
   import §^!7§.§^A§;
   
   public class §5!"§ extends §5&§
   {
       
      
      private var §?![§:int = 0;
      
      public function §5!"§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §05§ = param12;
         §0!@§ = param13;
      }
      
      override public function addDestructionParticles(param1:§`!S§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§[N§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§?W§.mW * §^A§.§<U§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§?W§.mH * §^A§.§<U§) + Math.random() * -_loc8_ * 2;
            if(§05§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §0!@§);
               param1.§'H§(§05§ + "_" + _loc9_,§+!Z§.§9!_§,§`!S§.§3!_§,§+!Z§.§76§,§1!E§().GetPosition().x + _loc7_,§1!E§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§function§(§7=§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.addParticle(§+!Z§.§9!_§,§`!S§.§3!_§,§+!Z§.§76§,§1!E§().GetPosition().x + _loc7_,§1!E§().GetPosition().y + _loc8_,1750 + Math.random() * 500,"",§function§(§7=§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§`!S§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§^A§ = §@@§.§ !8§;
         if(§^o§ < §'!M§ || §1!E§() == null)
         {
            _loc1_.§5?§(this);
            _loc1_.§4v§ = false;
            return;
         }
         var _loc2_:Number = x * §^A§.§<U§;
         var _loc3_:Number = y * §^A§.§<U§;
         var _loc4_:String = §+!Z§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§?![§ == 1)
         {
            _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§?![§ == 2)
         {
            _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§?![§ = (this.§?![§ + 1) % 3;
         _loc1_.particles.addParticle(_loc4_,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
      }
   }
}
