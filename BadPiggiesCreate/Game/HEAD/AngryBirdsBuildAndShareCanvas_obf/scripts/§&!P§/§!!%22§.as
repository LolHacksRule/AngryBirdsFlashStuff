package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §!!"§ extends §``§
   {
      
      public static const §'!t§:int = 1750;
       
      
      private var §`U§:int = 0;
      
      public function §!!"§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         §,H§ = param12;
         §'"$§ = param13;
      }
      
      override public function addDestructionParticles(param1:§6!Q§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc3_:int = Math.min(49,Math.max(1,§9!3§(false))) + 1;
         var _loc4_:Number = 90;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = (_loc7_ = -§8C§.mW * §,4§.§,^§) + Math.random() * -_loc7_ * 2;
            _loc8_ = (_loc8_ = -§8C§.mH * §,4§.§,^§) + Math.random() * -_loc8_ * 2;
            if(§,H§ != "")
            {
               _loc9_ = 1 + Math.floor(Math.random() * §'"$§);
               param1.§-"<§(§,H§ + "_" + _loc9_,§`!E§.§<"9§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§'!t§ + Math.random() * 500,"",§]!I§(§+!A§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            else
            {
               param1.§'p§(§`!E§.§<"9§,§6!Q§.§+f§,§`!E§.§]W§,getBody().GetPosition().x + _loc7_,getBody().GetPosition().y + _loc8_,§'!t§ + Math.random() * 500,"",§]!I§(§+!A§),4 * Math.cos(_loc6_),-4 * Math.sin(_loc6_),10,4 * 50);
            }
            _loc5_++;
         }
      }
      
      override public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
      }
      
      override public function addTrail() : void
      {
         var _loc1_:§,4§ = §'_§.§=M§;
         if(§8W§ < §%5§ || getBody() == null)
         {
            _loc1_.§32§(this);
            _loc1_.§1!;§ = false;
            return;
         }
         var _loc2_:Number = x * §,4§.§,^§;
         var _loc3_:Number = y * §,4§.§,^§;
         var _loc4_:String = §`!E§.PARTICLE_NAME_BIRD_TRAIL1;
         if(this.§`U§ == 1)
         {
            _loc4_ = §`!E§.PARTICLE_NAME_BIRD_TRAIL2;
         }
         else if(this.§`U§ == 2)
         {
            _loc4_ = §`!E§.PARTICLE_NAME_BIRD_TRAIL3;
         }
         this.§`U§ = (this.§`U§ + 1) % 3;
         _loc1_.particles.§'p§(_loc4_,§6!Q§.§;"#§,§`!E§.§+"=§,_loc2_,_loc3_,-1,"",§`!E§.§6!O§);
      }
   }
}
