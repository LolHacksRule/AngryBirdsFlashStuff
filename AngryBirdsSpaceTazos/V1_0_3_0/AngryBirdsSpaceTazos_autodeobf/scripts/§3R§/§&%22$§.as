package §3R§
{
   import §!u§.§,9§;
   import §&!3§.§0!W§;
   import §4",§.§3v§;
   import §4"@§.Sprite;
   import §5"D§.§&!,§;
   import §5"D§.§3!3§;
   import §5"D§.§9!s§;
   import §6!M§.§9`§;
   import §6!M§.§;!4§;
   import §6!M§.§<!r§;
   import §7!C§.§8!w§;
   import flash.geom.Point;
   
   public class §&"$§ extends §"5§
   {
       
      
      private var §!!9§:§9`§;
      
      private var §[q§:§,9§;
      
      private var §]-§:§;!h§;
      
      private var §9!y§:§;!h§;
      
      public function §&"$§(param1:§1!R§, param2:§3v§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeSlingshotObject(param1:§<!r§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §;!h§
      {
         var _loc6_:String = null;
         if(param1 is §9`§)
         {
            this.§!!9§ = param1 as §9`§;
            _loc6_ = this.§!!9§.getSound("activate");
            this.§!!9§.playSoundLua(_loc6_);
            return new §9!s§(this,param5,param1.itemName,param1 as §9`§,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      public function §&!^§() : void
      {
         this.§[q§ = §,9§(§;H§.levelObjects.addObject(§,9§.§8p§,x / §1!R§.§00§,y / §1!R§.§00§,0,§3!3§.§'!y§));
         §8!w§.§5!V§.camera.§-l§(§0!W§.§>!u§);
         §8!w§.§5!V§.camera.§;"7§ = §8!w§.§5!V§.camera.§-q§;
         if(mBirds.length > 0)
         {
            this.§9!y§ = mBirds[mNextBirdIndex];
            this.§9!y§.§2!C§();
            (this.§9!y§ as §9!s§).§1!D§(§1!`§,§<2§,this.§9!y§.§3H§,this.§9!y§.§,!;§);
         }
         else
         {
            §"!$§(§87§);
         }
         var _loc1_:§;!h§ = §+!T§(§&!,§.§8p§,§1!`§,§<2§);
         this.§2s§(_loc1_);
         this.§]-§ = _loc1_;
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         this.§9!y§ = null;
         if(this.§[q§)
         {
            this.§[q§.dispose();
            this.§[q§ = null;
         }
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         if(this.§9!y§)
         {
            if((this.§9!y§ as §9!s§).§;"6§())
            {
               return false;
            }
         }
         return super.canStartDragging(param1);
      }
      
      override protected function playStretchSound() : void
      {
         this.§!!9§.playSoundLua("slingshot_stretched");
      }
      
      override protected function playBirdShotSound() : void
      {
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         super.update(param1,param2);
         if(this.§[q§)
         {
            this.§[q§.§08§(this.§]-§.x / §1!R§.§00§,this.§]-§.y / §1!R§.§00§,false,true);
         }
      }
      
      override protected function showScoreForRemainingBird(param1:§;!h§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§;!4§;
         if((_loc4_ = param1.levelItem as §;!4§) && _loc4_.spriteScore)
         {
            §;H§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§3!3§.§'!y§,false,false,false,3,true);
            _loc3_ = false;
         }
         §;H§.addScore(param2,§+7§.§`!r§,_loc3_,param1.x,param1.y - 3);
      }
      
      private function §2s§(param1:§;!h§) : void
      {
         §;H§.levelObjects.addObject("birdSpecial_laser_activation",§8!w§.§5!V§.slingshot.x,§8!w§.§5!V§.slingshot.y,0,§3!3§.§'!y§,false,false,false,1,true);
      }
   }
}
