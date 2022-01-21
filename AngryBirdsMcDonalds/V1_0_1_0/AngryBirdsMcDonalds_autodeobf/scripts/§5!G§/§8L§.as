package §5!G§
{
   import §&!K§.§3b§;
   import §&!K§.§^!3§;
   import §1B§.b2World;
   import §2!g§.Sprite;
   import §@!b§.§0]§;
   import §@!b§.§@!k§;
   
   public class §8L§ extends §!<§
   {
      
      public static const §!!N§:Number = 0.3;
       
      
      private var §0!<§:Boolean = false;
      
      private var §"!>§:Number = 0;
      
      public function §8L§(param1:§8+§, param2:Sprite, param3:b2World, param4:§@!k§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         §1&§ = param11;
         §@'§.limitMultiplier = §!!N§;
      }
      
      override public function addDestructionParticles(param1:§3b§) : void
      {
         var _loc2_:String = !!this.§0!<§ ? §^!3§.§0!`§ : §^!3§.§#![§;
         if(§1&§ == "")
         {
            param1.§"!S§(_loc2_,§3b§.§;-§,§^!3§.§,Q§,§>j§().GetPosition().x,§>j§().GetPosition().y - 1,2000,"",§^!3§.§]5§);
         }
         else
         {
            param1.§^!J§(§1&§,_loc2_,§3b§.§;-§,§^!3§.§,Q§,§>j§().GetPosition().x,§>j§().GetPosition().y - 1,2000,"",§^!3§.§]5§,0,0,0,0,1,20,true);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Number;
         if((_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6)) <= 0 && param3 && param4)
         {
            this.§0!<§ = true;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         if(this.§"!>§ > 0)
         {
            this.§"!>§ -= param1;
            §8!J§.mTryToScream = §]^§.§@X§;
            return true;
         }
         return super.updateScreamingFrameAnimations(param1);
      }
      
      public function §@3§() : void
      {
         this.§"!>§ = §0]§.§^!@§;
         §8!J§.mTryToScream = §]^§.§@X§;
         playScreamingSoundEffect();
      }
   }
}
