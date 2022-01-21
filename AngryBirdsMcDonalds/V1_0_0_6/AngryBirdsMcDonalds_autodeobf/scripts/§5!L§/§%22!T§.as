package §5!L§
{
   import §#M§.§+!Z§;
   import §2![§.Sprite;
   import §7!5§.b2World;
   import §8!§.§'F§;
   import §8!§.§9!-§;
   import §<L§.§!!G§;
   
   public class §"!T§ extends §,!&§
   {
      
      public static const §4!@§:int = 1750;
       
      
      private var §@! §:int = 0;
      
      public function §"!T§(param1:§?8§, param2:Sprite, param3:b2World, param4:§!!G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §?3§ = param12;
         §null § = param13;
      }
      
      override public function addDestructionParticles(param1:§'F§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§6k§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§<i§.mW * §!!G§.§ !E§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§<i§.mH * §!!G§.§ !E§) + Math.random() * -_loc8_ * 2;
            if(§?3§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §null §);
               param1.§if§(§?3§ + "_" + _loc9_,§9!-§.§00§,§'F§.§8e§,§9!-§.§7=§,§;G§().GetPosition().x + _loc7_,§;G§().GetPosition().y + _loc8_,§4!@§ + Math.random() * 500,"",§4!^§(§%!O§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§]!5§(§9!-§.§00§,§'F§.§8e§,§9!-§.§7=§,§;G§().GetPosition().x + _loc7_,§;G§().GetPosition().y + _loc8_,§4!@§ + Math.random() * 500,"",§4!^§(§%!O§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§'F§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§!!G§ = §+!Z§.§?!<§;
         if(§3o§ < §'6§ || §;G§() == null)
         {
            _loc1_.§7$§(this);
            _loc1_.§7]§ = false;
            return;
         }
         var _loc2_:Number = x * §!!G§.§ !E§;
         var _loc3_:Number = y * §!!G§.§ !E§;
         var _loc4_:String = §9!-§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§@! § == 1)
         {
            _loc4_ = §9!-§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§@! § == 2)
         {
            _loc4_ = §9!-§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§@! § = (this.§@! § + 1) % 3;
         _loc1_.particles.§]!5§(_loc4_,§'F§.§"^§,§9!-§.§92§,_loc2_,_loc3_,-1,"",§9!-§.§>5§);
      }
   }
}
