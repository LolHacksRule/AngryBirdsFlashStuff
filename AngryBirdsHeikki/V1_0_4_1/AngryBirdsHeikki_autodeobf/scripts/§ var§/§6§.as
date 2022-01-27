package § var§
{
   import §8!I§.b2World;
   import §<!-§.Sprite;
   import §>!Z§.§+!Z§;
   import §>!Z§.§`!S§;
   import §?!P§.§@@§;
   import §^!7§.§^A§;
   import §`!X§.§1M§;
   import §`!X§.§@!^§;
   
   public class §6§ extends §1M§
   {
       
      
      private var §4!"§:int;
      
      public function §6§(param1:§@!^§, param2:Sprite, param3:b2World, param4:§^A§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         this.§4!"§ = 0;
      }
      
      override public function activateSpecialPower(param1:§@!^§) : Boolean
      {
         super.activateSpecialPower(param1);
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:§^A§ = §@@§.§ !8§;
         if(§^o§ < §'!M§ || §1!E§() == null)
         {
            _loc1_.§5?§(this);
            _loc1_.§4v§ = false;
            return;
         }
         var _loc2_:Number = x * §^A§.§<U§;
         var _loc3_:Number = y * §^A§.§<U§;
         if(_loc1_.§4v§)
         {
            _loc1_.particles.addParticle(§+!Z§.§>!>§,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
            _loc1_.§4v§ = false;
            §?![§ = 0;
         }
         else if(§'!#§ > 1)
         {
            _loc1_.particles.addParticle(§+!Z§.§9?§,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
         }
         else
         {
            _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL1;
            if(§?![§ == 1)
            {
               _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL2;
            }
            else if(§?![§ == 2)
            {
               if(this.§4!"§ < 3)
               {
                  _loc4_ = §+!Z§.§'U§;
                  _loc1_.particles.addParticle(_loc4_,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
                  ++this.§4!"§;
               }
               _loc4_ = §+!Z§.PARTICLE_NAME_BIRD_TRAIL3;
            }
            §?![§ = (§?![§ + 1) % 3;
            _loc1_.particles.addParticle(_loc4_,§`!S§.§6!8§,§+!Z§.§]!6§,_loc2_,_loc3_,-1,"",§+!Z§.§<!8§);
         }
         if(Math.random() < §'e§)
         {
            _loc5_ = -Math.PI / 2;
            _loc6_ = Math.random();
            _loc1_.particles.addParticle(§+!Z§.§-!+§,§`!S§.§3!_§,§+!Z§.§76§,§1!E§().GetPosition().x,§1!E§().GetPosition().y,1250,"",§+!Z§.§function§(§7=§),_loc6_ * Math.cos(_loc5_) * scale,-_loc6_ * Math.sin(_loc5_) * scale,5,_loc6_ * 20,Math.sqrt(scale));
         }
      }
   }
}
