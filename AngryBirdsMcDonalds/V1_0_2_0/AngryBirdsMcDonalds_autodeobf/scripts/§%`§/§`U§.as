package §%`§
{
   import §'a§.§0!f§;
   import §'a§.§^N§;
   import §2!`§.§3F§;
   import §2!`§.§8!;§;
   import §3!g§.b2World;
   import §5x§.Sprite;
   
   public class §`U§ extends §9c§
   {
      
      public static const §,v§:Number = 0.3;
       
      
      private var §-f§:Boolean = false;
      
      private var §"O§:Number = 0;
      
      public function §`U§(param1:§,!k§, param2:Sprite, param3:b2World, param4:§0!f§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §9O§ = param11;
         §@!R§.limitMultiplier = §,v§;
      }
      
      override public function addDestructionParticles(param1:§3F§) : void
      {
         var _loc2_:String = !!this.§-f§ ? §8!;§.§'!X§ : §8!;§.§#!]§;
         if(§9O§ == "")
         {
            param1.§;!G§(_loc2_,§3F§.§![§,§8!;§.§=!h§,§%9§().GetPosition().x,§%9§().GetPosition().y - 1,2000,"",§8!;§.§^!f§);
         }
         else
         {
            param1.§%!9§(§9O§,_loc2_,§3F§.§![§,§8!;§.§=!h§,§%9§().GetPosition().x,§%9§().GetPosition().y - 1,2000,"",§8!;§.§^!f§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§-f§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§"O§ > 0)
         {
            this.§"O§ -= param1;
            §2R§.mTryToScream = §;!"§.§]l§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §8!Q§() : void
      {
         this.§"O§ = §^N§.§2-§;
         §2R§.mTryToScream = §;!"§.§]l§;
         playScreamingSoundEffect();
      }
   }
}
