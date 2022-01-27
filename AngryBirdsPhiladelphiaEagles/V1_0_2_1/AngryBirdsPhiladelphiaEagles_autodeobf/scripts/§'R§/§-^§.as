package §'R§
{
   import §%"§.§ do§;
   import §%"§.Tuner;
   import §;;§.§"!E§;
   import §;;§.§9"§;
   import §<!N§.Sprite;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §-^§ extends §%-§
   {
      
      public static const §1!4§:Number = 0.3;
       
      
      private var §&!0§:Boolean = false;
      
      private var §+!G§:Number = 0;
      
      public function §-^§(param1:§!m§, param2:Sprite, param3:b2World, param4:§ do§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §<@§ = param11;
         §[!,§.limitMultiplier = §1!4§;
      }
      
      override public function addDestructionParticles(param1:§9"§) : void
      {
         var _loc2_:String = !!this.§&!0§ ? §"!E§.§'H§ : §"!E§.§@!§;
         if(§<@§ == "")
         {
            param1.addParticle(_loc2_,§9"§.§`z§,§"!E§.§2N§,§<!I§().GetPosition().x,§<!I§().GetPosition().y - 1,2000,"",§"!E§.§&<§);
         }
         else
         {
            param1.§0Z§(§<@§,_loc2_,§9"§.§`z§,§"!E§.§2N§,§<!I§().GetPosition().x,§<!I§().GetPosition().y - 1,2000,"",§"!E§.§&<§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§&!0§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§+!G§ > 0)
         {
            this.§+!G§ -= param1;
            §,q§.mTryToScream = §-$§.§`!,§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §=!!§() : void
      {
         this.§+!G§ = Tuner.§`v§;
         §,q§.mTryToScream = §-$§.§`!,§;
         playScreamingSoundEffect();
      }
   }
}
