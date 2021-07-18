package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §%!0§.§,g§;
   import §+!-§.Sprite;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §&!a§ extends §!>§
   {
      
      public static const §5e§:Number = 0.3;
       
      
      private var §<O§:Boolean = false;
      
      private var §+7§:Number = 0;
      
      public function §&!a§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §,H§ = param11;
         §^!?§.limitMultiplier = §5e§;
      }
      
      override public function addDestructionParticles(param1:§6!Q§) : void
      {
         var _loc2_:String = !!this.§<O§ ? §`!E§.§5!d§ : §`!E§.§8!&§;
         if(§,H§ == "")
         {
            param1.§'p§(_loc2_,§6!Q§.§+f§,§`!E§.§;!o§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§`!E§.§,K§);
         }
         else
         {
            param1.§-"<§(§,H§,_loc2_,§6!Q§.§+f§,§`!E§.§;!o§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§`!E§.§,K§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§<O§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§+7§ > 0)
         {
            this.§+7§ -= param1;
            §8C§.mTryToScream = §0;§.§2!_§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §!!'§() : void
      {
         this.§+7§ = §,g§.§&e§;
         §8C§.mTryToScream = §0;§.§2!_§;
         playScreamingSoundEffect();
      }
   }
}
