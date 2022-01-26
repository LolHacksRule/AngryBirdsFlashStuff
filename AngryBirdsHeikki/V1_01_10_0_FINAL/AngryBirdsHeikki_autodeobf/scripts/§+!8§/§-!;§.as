package §+!8§
{
   import §!E§.§!U§;
   import §!E§.§?F§;
   import §"!I§.§<!$§;
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   
   public class §-!;§ extends § !5§
   {
      
      public static const §^2§:Number = 0.3;
       
      
      private var §+F§:Boolean = false;
      
      private var §;-§:Number = 0;
      
      public function §-!;§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §<b§ = param11;
         §!w§.limitMultiplier = §^2§;
      }
      
      override public function addDestructionParticles(param1:§?F§) : void
      {
         var _loc2_:String = !!this.§+F§ ? §!U§.§,V§ : §!U§.§-!_§;
         if(§<b§ == "")
         {
            param1.addParticle(_loc2_,§?F§.§<G§,§!U§.§8;§,§0c§().GetPosition().x,§0c§().GetPosition().y - 1,2000,"",§!U§.§9!,§);
         }
         else
         {
            param1.§6S§(§<b§,_loc2_,§?F§.§<G§,§!U§.§8;§,§0c§().GetPosition().x,§0c§().GetPosition().y - 1,2000,"",§!U§.§9!,§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§+F§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§;-§ > 0)
         {
            this.§;-§ -= param1;
            §[r§.mTryToScream = §&!_§.§6!c§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §;!-§() : void
      {
         this.§;-§ = §<!$§.§5n§;
         §[r§.mTryToScream = §&!_§.§6!c§;
         playScreamingSoundEffect();
      }
   }
}
