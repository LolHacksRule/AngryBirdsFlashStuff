package §?!§
{
   import §&c§.Sprite;
   import §&x§.b2World;
   import §3!@§.§ s§;
   import §3!@§.§'!0§;
   import §?!P§.§4!-§;
   import §?!P§.§65§;
   
   public class §+X§ extends § !g§
   {
      
      public static const §4!8§:Number = 0.3;
       
      
      private var §9!2§:Boolean = false;
      
      private var § !<§:Number = 0;
      
      public function §+X§(param1:§>!4§, param2:Sprite, param3:b2World, param4:§ s§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §=!f§ = param11;
         §continue§.limitMultiplier = §4!8§;
      }
      
      override public function addDestructionParticles(param1:§4!-§) : void
      {
         var _loc2_:String = !!this.§9!2§ ? §65§.§#!'§ : §65§.§#!p§;
         if(§=!f§ == "")
         {
            param1.§ D§(_loc2_,§4!-§.§&#§,§65§.§"5§,§2!!§().GetPosition().x,§2!!§().GetPosition().y - 1,2000,"",§65§.§null§);
         }
         else
         {
            param1.§3!3§(§=!f§,_loc2_,§4!-§.§&#§,§65§.§"5§,§2!!§().GetPosition().x,§2!!§().GetPosition().y - 1,2000,"",§65§.§null§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§9!2§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§ !<§ > 0)
         {
            this.§ !<§ -= param1;
            §-s§.mTryToScream = §0!@§.§!s§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §3!B§() : void
      {
         this.§ !<§ = §'!0§.§>!Z§;
         §-s§.mTryToScream = §0!@§.§!s§;
         playScreamingSoundEffect();
      }
   }
}
