package §^!A§
{
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §6A§.§ !§;
   import §6A§.§#!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §^!#§ extends §#z§
   {
      
      public static const §;!4§:Number = 0.3;
       
      
      private var §+z§:Boolean = false;
      
      private var §,!K§:Number = 0;
      
      public function §^!#§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §4N§ = param11;
         §;!0§.limitMultiplier = §;!4§;
      }
      
      override public function addDestructionParticles(param1:§2!H§) : void
      {
         var _loc2_:String = !!this.§+z§ ? §<!6§.§'l§ : §<!6§.§`7§;
         if(§4N§ == "")
         {
            param1.§4#§(_loc2_,§2!H§.§"!5§,§<!6§.§8!<§,§'[§().GetPosition().x,§'[§().GetPosition().y - 1,2000,"",§<!6§.§;k§);
         }
         else
         {
            param1.§?e§(§4N§,_loc2_,§2!H§.§"!5§,§<!6§.§8!<§,§'[§().GetPosition().x,§'[§().GetPosition().y - 1,2000,"",§<!6§.§;k§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§+z§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§,!K§ > 0)
         {
            this.§,!K§ -= param1;
            §;S§.mTryToScream = §[!J§.§`"§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §'R§() : void
      {
         this.§,!K§ = §#!E§.§<[§;
         §;S§.mTryToScream = §[!J§.§`"§;
         playScreamingSoundEffect();
      }
   }
}
