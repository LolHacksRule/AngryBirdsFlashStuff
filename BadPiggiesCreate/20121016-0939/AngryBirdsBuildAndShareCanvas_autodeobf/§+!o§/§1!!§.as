package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §+S§.b2World;
   import §5!V§.§!w§;
   import §5!V§.§8^§;
   import §default§.Sprite;
   
   public class §1!!§ extends §2f§
   {
      
      public static const §="?§:Number = 0.3;
       
      
      private var §+O§:Boolean = false;
      
      private var §6K§:Number = 0;
      
      public function §1!!§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §'K§ = param11;
         §`"'§.limitMultiplier = §="?§;
      }
      
      override public function addDestructionParticles(param1:§-5§) : void
      {
         var _loc2_:String = !!this.§+O§ ? §&!>§.§6!3§ : §&!>§.§;!E§;
         if(§'K§ == "")
         {
            param1.§[b§(_loc2_,§-5§.§5Q§,§&!>§.§0!+§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§&!>§.§4%§);
         }
         else
         {
            param1.§@"&§(§'K§,_loc2_,§-5§.§5Q§,§&!>§.§0!+§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§&!>§.§4%§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§+O§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§6K§ > 0)
         {
            this.§6K§ -= param1;
            §[!g§.mTryToScream = §<Y§.§^!7§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §,!P§() : void
      {
         this.§6K§ = §8^§.§!"%§;
         §[!g§.mTryToScream = §<Y§.§^!7§;
         playScreamingSoundEffect();
      }
   }
}
