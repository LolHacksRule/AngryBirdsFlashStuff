package §>Y§
{
   import §4!-§.§%o§;
   import §4!-§.Tuner;
   import §86§.Sprite;
   import §<4§.§ try§;
   import §<4§.§5!C§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §8k§ extends §3M§
   {
      
      public static const §35§:Number = 0.3;
       
      
      private var §,z§:Boolean = false;
      
      private var §>A§:Number = 0;
      
      public function §8k§(param1:§2>§, param2:Sprite, param3:b2World, param4:§%o§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §&X§ = param11;
         §]1§.limitMultiplier = §35§;
      }
      
      override public function addDestructionParticles(param1:§ try§) : void
      {
         var _loc2_:String = !!this.§,z§ ? §5!C§.§6!9§ : §5!C§.§]M§;
         if(§&X§ == "")
         {
            param1.addParticle(_loc2_,§ try§.§4!+§,§5!C§.§7b§,§[5§().GetPosition().x,§[5§().GetPosition().y - 1,2000,"",§5!C§.§0!M§);
         }
         else
         {
            param1.§&y§(§&X§,_loc2_,§ try§.§4!+§,§5!C§.§7b§,§[5§().GetPosition().x,§[5§().GetPosition().y - 1,2000,"",§5!C§.§0!M§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§,z§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§>A§ > 0)
         {
            this.§>A§ -= param1;
            §%!B§.mTryToScream = §^!,§.§'!?§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §40§() : void
      {
         this.§>A§ = Tuner.§%+§;
         §%!B§.mTryToScream = §^!,§.§'!?§;
         playScreamingSoundEffect();
      }
   }
}
