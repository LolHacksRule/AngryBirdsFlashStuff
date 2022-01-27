package §+!#§
{
   import §0!?§.b2World;
   import §2z§.§2!U§;
   import §2z§.§9!a§;
   import §=!E§.Sprite;
   import §^t§.§<;§;
   import §^t§.§[I§;
   
   public class §0G§ extends §>!-§
   {
      
      public static const §[H§:Number = 0.3;
       
      
      private var §=!#§:Boolean = false;
      
      private var §,!Q§:Number = 0;
      
      public function §0G§(param1:§"!6§, param2:Sprite, param3:b2World, param4:§2!U§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §'H§ = param11;
         §[!_§.limitMultiplier = §[H§;
      }
      
      override public function addDestructionParticles(param1:§<;§) : void
      {
         var _loc2_:String = !!this.§=!#§ ? §[I§.§2J§ : §[I§.§=!V§;
         if(§'H§ == "")
         {
            param1.addParticle(_loc2_,§<;§.§&!=§,§[I§.§@! §,§[!H§().GetPosition().x,§[!H§().GetPosition().y - 1,2000,"",§[I§.§ '§);
         }
         else
         {
            param1.§"-§(§'H§,_loc2_,§<;§.§&!=§,§[I§.§@! §,§[!H§().GetPosition().x,§[!H§().GetPosition().y - 1,2000,"",§[I§.§ '§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§=!#§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§,!Q§ > 0)
         {
            this.§,!Q§ -= param1;
            §8!E§.mTryToScream = §@!!§.§#1§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §`!B§() : void
      {
         this.§,!Q§ = §9!a§.§6L§;
         §8!E§.mTryToScream = §@!!§.§#1§;
         playScreamingSoundEffect();
      }
   }
}
