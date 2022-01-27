package §3"#§
{
   import §&!]§.Sprite;
   import §1"?§.§-N§;
   import §1z§.§2#§;
   import §3>§.§-"8§;
   import §3>§.§-f§;
   import §3>§.§1!;§;
   import §3h§.§'`§;
   import §9"!§.§"" §;
   import §9"!§.§"0§;
   import §9"!§.§'N§;
   import §>"2§.§8k§;
   import flash.geom.Point;
   
   public class § !G§ extends § true§
   {
       
      
      private var § N§:§1!;§;
      
      private var §<!k§:§-N§;
      
      private var §#">§:§'"&§;
      
      private var §,!I§:§'"&§;
      
      public function § !G§(param1:§`"8§, param2:§2#§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeSlingshotObject(param1:§-"8§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §'"&§
      {
         var _loc6_:String = null;
         if(param1 is §1!;§)
         {
            this.§ N§ = param1 as §1!;§;
            _loc6_ = this.§ N§.getSound("activate");
            this.§ N§.playSoundLua(_loc6_);
            return new §'N§(this,param5,param1.itemName,param1 as §1!;§,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      public function §<8§() : void
      {
         this.§<!k§ = §-N§(§'"9§.levelObjects.addObject(§-N§.§#!"§,x / §`"8§.§3!=§,y / §`"8§.§3!=§,0,§"" §.§%A§));
         §8k§.§;!]§.camera.§[!n§(§'`§.§"9§);
         §8k§.§;!]§.camera.§^o§ = §8k§.§;!]§.camera.§!"=§;
         if(mBirds.length > 0)
         {
            this.§,!I§ = mBirds[mNextBirdIndex];
            this.§,!I§.§`v§();
            (this.§,!I§ as §'N§).§<"8§(§''§,§3"<§,this.§,!I§.§0!N§,this.§,!I§.§7O§);
         }
         else
         {
            §?d§(§^!>§);
         }
         var _loc1_:§'"&§ = §-+§(§"0§.§#!"§,§''§,§3"<§);
         this.§`k§(_loc1_);
         this.§#">§ = _loc1_;
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         this.§,!I§ = null;
         if(this.§<!k§)
         {
            this.§<!k§.dispose();
            this.§<!k§ = null;
         }
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         if(this.§,!I§)
         {
            if((this.§,!I§ as §'N§).§,"&§())
            {
               return false;
            }
         }
         return super.canStartDragging(param1);
      }
      
      override protected function playStretchSound() : void
      {
         this.§ N§.playSoundLua("slingshot_stretched");
      }
      
      override protected function playBirdShotSound() : void
      {
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         super.update(param1,param2);
         if(this.§<!k§)
         {
            this.§<!k§.§=1§(this.§#">§.x / §`"8§.§3!=§,this.§#">§.y / §`"8§.§3!=§,false,true);
         }
      }
      
      override protected function showScoreForRemainingBird(param1:§'"&§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§-f§;
         if((_loc4_ = param1.levelItem as §-f§) && _loc4_.spriteScore)
         {
            §'"9§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§"" §.§%A§,false,false,false,3,true);
            _loc3_ = false;
         }
         §'"9§.addScore(param2,§ 7§.§>"G§,_loc3_,param1.x,param1.y - 3);
      }
      
      private function §`k§(param1:§'"&§) : void
      {
         §'"9§.levelObjects.addObject("birdSpecial_laser_activation",§8k§.§;!]§.slingshot.x,§8k§.§;!]§.slingshot.y,0,§"" §.§%A§,false,false,false,1,true);
      }
   }
}
