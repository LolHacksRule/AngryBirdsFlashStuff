package §'4§
{
   import §"!&§.§+W§;
   import §"!&§.§8X§;
   import §"!&§.§]!C§;
   import §,"&§.§9q§;
   import §1"H§.§=!3§;
   import §7!8§.Sprite;
   import §9!w§.§9!,§;
   import §]">§.§!!r§;
   import §]">§.§-%§;
   import §]">§.§1!f§;
   import §`!j§.§#b§;
   import flash.geom.Point;
   
   public class §"!Q§ extends §;!g§
   {
       
      
      private var §7!h§:§+W§;
      
      private var §[c§:§=!3§;
      
      private var §5"§:§-T§;
      
      private var §var §:§-T§;
      
      public function §"!Q§(param1:§^g§, param2:§#b§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeSlingshotObject(param1:§8X§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §-T§
      {
         var _loc6_:String = null;
         if(param1 is §+W§)
         {
            this.§7!h§ = param1 as §+W§;
            _loc6_ = this.§7!h§.getSound("activate");
            this.§7!h§.playSoundLua(_loc6_);
            return new §1!f§(this,param5,param1.itemName,param1 as §+W§,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      public function § "C§() : void
      {
         this.§[c§ = §=!3§(§?>§.levelObjects.addObject(§=!3§.§!!p§,x / §^g§.§5!-§,y / §^g§.§5!-§,0,§-%§.§;!J§));
         §9q§.§>!L§.camera.§^!P§(§9!,§.§7"9§);
         §9q§.§>!L§.camera.§'!$§ = §9q§.§>!L§.camera.§?!t§;
         if(mBirds.length > 0)
         {
            this.§var § = mBirds[mNextBirdIndex];
            this.§var §.§[!n§();
            (this.§var § as §1!f§).§>V§(§""4§,§%W§,this.§var §.§ "'§,this.§var §.§=!q§);
         }
         else
         {
            §=i§(§'`§);
         }
         var _loc1_:§-T§ = §0v§(§!!r§.§!!p§,§""4§,§%W§);
         this.§;!>§(_loc1_);
         this.§5"§ = _loc1_;
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         this.§var § = null;
         if(this.§[c§)
         {
            this.§[c§.dispose();
            this.§[c§ = null;
         }
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         if(this.§var §)
         {
            if((this.§var § as §1!f§).§%">§())
            {
               return false;
            }
         }
         return super.canStartDragging(param1);
      }
      
      override protected function playStretchSound() : void
      {
         this.§7!h§.playSoundLua("slingshot_stretched");
      }
      
      override protected function playBirdShotSound() : void
      {
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         super.update(param1,param2);
         if(this.§[c§)
         {
            this.§[c§.§[!T§(this.§5"§.x / §^g§.§5!-§,this.§5"§.y / §^g§.§5!-§,false,true);
         }
      }
      
      override protected function showScoreForRemainingBird(param1:§-T§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§]!C§;
         if((_loc4_ = param1.levelItem as §]!C§) && _loc4_.spriteScore)
         {
            §?>§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§-%§.§;!J§,false,false,false,3,true);
            _loc3_ = false;
         }
         §?>§.addScore(param2,§!!t§.§9j§,_loc3_,param1.x,param1.y - 3);
      }
      
      private function §;!>§(param1:§-T§) : void
      {
         §?>§.levelObjects.addObject("birdSpecial_laser_activation",§9q§.§>!L§.slingshot.x,§9q§.§>!L§.slingshot.y,0,§-%§.§;!J§,false,false,false,1,true);
      }
   }
}
