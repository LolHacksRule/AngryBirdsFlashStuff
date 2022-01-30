package §4!#§
{
   import §!R§.§8u§;
   import §!R§.§>"=§;
   import §&!M§.b2World;
   import §@!i§.Sprite;
   import §[B§.§"d§;
   import §[B§.§5"1§;
   
   public class §,!l§ extends §4!Q§
   {
      
      public static const §=^§:Number = 0.3;
       
      
      private var §1"3§:Boolean = false;
      
      private var §&H§:Number = 0;
      
      public function §,!l§(param1:§[R§, param2:Sprite, param3:b2World, param4:§"d§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §^4§ = param11;
         §2&§.limitMultiplier = §=^§;
      }
      
      override public function addDestructionParticles(param1:§>"=§) : void
      {
         var _loc2_:String = !!this.§1"3§ ? §8u§.§5t§ : §8u§.§1D§;
         if(§^4§ == "")
         {
            param1.§""#§(_loc2_,§>"=§.§3%§,§8u§.§,!+§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§8u§.§9!p§);
         }
         else
         {
            param1.§@!W§(§^4§,_loc2_,§>"=§.§3%§,§8u§.§,!+§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§8u§.§9!p§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§1"3§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§&H§ > 0)
         {
            this.§&H§ -= param1;
            §8!5§.mTryToScream = §#0§.§#!i§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §]!"§() : void
      {
         this.§&H§ = §5"1§.§`x§;
         §8!5§.mTryToScream = §#0§.§#!i§;
         playScreamingSoundEffect();
      }
   }
}
