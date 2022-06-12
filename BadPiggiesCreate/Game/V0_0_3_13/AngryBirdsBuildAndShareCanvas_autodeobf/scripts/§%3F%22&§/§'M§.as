package §?"&§
{
   import §7!q§.b2World;
   import §8!E§.§?!X§;
   import §8!E§.§@!i§;
   import §["8§.§ !>§;
   import §["8§.§=!i§;
   import §`L§.Sprite;
   
   public class §'M§ extends §%Z§
   {
      
      public static const §[!0§:Number = 0.3;
       
      
      private var §?J§:Boolean = false;
      
      private var §1"%§:Number = 0;
      
      public function §'M§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §,#§ = param11;
         §<!p§.limitMultiplier = §[!0§;
      }
      
      override public function addDestructionParticles(param1:§ !>§) : void
      {
         var _loc2_:String = !!this.§?J§ ? §=!i§.§ @§ : §=!i§.§-§;
         if(§,#§ == "")
         {
            param1.§-?§(_loc2_,§ !>§.§!!]§,§=!i§.§&x§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§=!i§.§^!G§);
         }
         else
         {
            param1.§9!?§(§,#§,_loc2_,§ !>§.§!!]§,§=!i§.§&x§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§=!i§.§^!G§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§?J§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§1"%§ > 0)
         {
            this.§1"%§ -= param1;
            §!!8§.mTryToScream = §"f§.§7X§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §2!g§() : void
      {
         this.§1"%§ = §@!i§.§6<§;
         §!!8§.mTryToScream = §"f§.§7X§;
         playScreamingSoundEffect();
      }
   }
}
