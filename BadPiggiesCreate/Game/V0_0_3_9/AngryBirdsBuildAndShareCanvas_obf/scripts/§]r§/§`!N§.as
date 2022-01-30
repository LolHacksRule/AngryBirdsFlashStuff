package §]r§
{
   import §7q§.Sprite;
   import §;w§.§3"+§;
   import §;w§.§5!Y§;
   import §=9§.b2World;
   import §=b§.§-!K§;
   import §=b§.§0;§;
   
   public class §`!N§ extends §@!§
   {
      
      public static const §@Z§:Number = 0.3;
       
      
      private var §1!x§:Boolean = false;
      
      private var §0!o§:Number = 0;
      
      public function §`!N§(param1:§2"%§, param2:Sprite, param3:b2World, param4:§-!K§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §3a§ = param11;
         §0!R§.limitMultiplier = §@Z§;
      }
      
      override public function addDestructionParticles(param1:§5!Y§) : void
      {
         var _loc2_:String = !!this.§1!x§ ? §3"+§.§8?§ : §3"+§.§'!J§;
         if(§3a§ == "")
         {
            param1.§continue§(_loc2_,§5!Y§.§%R§,§3"+§.§&a§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§3"+§.§'!F§);
         }
         else
         {
            param1.§#!<§(§3a§,_loc2_,§5!Y§.§%R§,§3"+§.§&a§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§3"+§.§'!F§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§1!x§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§0!o§ > 0)
         {
            this.§0!o§ -= param1;
            §2!7§.mTryToScream = §+c§.§]![§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §@9§() : void
      {
         this.§0!o§ = §0;§.§%!e§;
         §2!7§.mTryToScream = §+c§.§]![§;
         playScreamingSoundEffect();
      }
   }
}
