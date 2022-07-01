package § ""§
{
   import §,!!§.§5!G§;
   import §,!!§.§>!]§;
   import §1!Y§.Sprite;
   import §1!v§.§0!9§;
   import §1!v§.§@%§;
   import §7z§.b2World;
   
   public class §>M§ extends §[!a§
   {
      
      public static const §9!x§:Number = 0.3;
       
      
      private var §>!F§:Boolean = false;
      
      private var §!@§:Number = 0;
      
      public function §>M§(param1:§6!u§, param2:Sprite, param3:b2World, param4:§@%§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §5]§ = param11;
         §1<§.limitMultiplier = §9!x§;
      }
      
      override public function addDestructionParticles(param1:§5!G§) : void
      {
         var _loc2_:String = !!this.§>!F§ ? §>!]§.§9"+§ : §>!]§.§[C§;
         if(§5]§ == "")
         {
            param1.§,D§(_loc2_,§5!G§.§5N§,§>!]§.§97§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§>!]§.§^Y§);
         }
         else
         {
            param1.§-!n§(§5]§,_loc2_,§5!G§.§5N§,§>!]§.§97§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§>!]§.§^Y§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§>!F§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§!@§ > 0)
         {
            this.§!@§ -= param1;
            §>!M§.mTryToScream = §<"6§.§3I§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §;!1§() : void
      {
         this.§!@§ = §0!9§.§%"#§;
         §>!M§.mTryToScream = §<"6§.§3I§;
         playScreamingSoundEffect();
      }
   }
}
