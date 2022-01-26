package § T§
{
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §&i§.b2World;
   import §1!A§.Sprite;
   import §7z§.§5b§;
   import §7z§.§]!-§;
   
   public class §@`§ extends §%g§
   {
      
      public static const §`I§:Number = 0.3;
       
      
      private var §%j§:Boolean = false;
      
      private var §6U§:Number = 0;
      
      public function §@`§(param1:§1!'§, param2:Sprite, param3:b2World, param4:§]!-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §>!Y§ = param11;
         §4!'§.limitMultiplier = §`I§;
      }
      
      override public function addDestructionParticles(param1:§0m§) : void
      {
         var _loc2_:String = !!this.§%j§ ? §^!_§.§;R§ : §^!_§.§<!U§;
         if(§>!Y§ == "")
         {
            param1.addParticle(_loc2_,§0m§.§=!T§,§^!_§.§+!!§,§][§().GetPosition().x,§][§().GetPosition().y - 1,2000,"",§^!_§.§[!_§);
         }
         else
         {
            param1.§4!Q§(§>!Y§,_loc2_,§0m§.§=!T§,§^!_§.§+!!§,§][§().GetPosition().x,§][§().GetPosition().y - 1,2000,"",§^!_§.§[!_§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§%j§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§6U§ > 0)
         {
            this.§6U§ -= param1;
            §9t§.mTryToScream = §4$§.§,!;§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §<!=§() : void
      {
         this.§6U§ = §5b§.§^O§;
         §9t§.mTryToScream = §4$§.§,!;§;
         playScreamingSoundEffect();
      }
   }
}
