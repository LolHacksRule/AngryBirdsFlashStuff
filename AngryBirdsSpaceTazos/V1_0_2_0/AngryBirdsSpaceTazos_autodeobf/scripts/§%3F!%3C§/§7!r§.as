package §?!<§
{
   import §'!&§.Sprite;
   import §+!9§.§;0§;
   import §,7§.§>3§;
   import §;!0§.§!!X§;
   import §;"=§.§!!O§;
   import §;"=§.§[e§;
   import §;"=§.§]"<§;
   import §[,§.§ !B§;
   import §[,§.§>`§;
   import §[,§.§]j§;
   import §[r§.§ use§;
   import flash.geom.Point;
   
   public class §7!r§ extends §,!z§
   {
       
      
      private var §00§:§[e§;
      
      private var §?#§:§>3§;
      
      private var §^F§:§6"3§;
      
      private var §7!6§:§6"3§;
      
      public function §7!r§(param1:§'!1§, param2:§!!X§, param3:Sprite)
      {
         super(param1,param2,param3);
      }
      
      override protected function initializeSlingshotObject(param1:§]"<§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §6"3§
      {
         var _loc6_:String = null;
         if(param1 is §[e§)
         {
            this.§00§ = param1 as §[e§;
            _loc6_ = this.§00§.getSound("activate");
            this.§00§.playSoundLua(_loc6_);
            return new §>`§(this,param5,param1.itemName,param1 as §[e§,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      public function §!;§() : void
      {
         this.§?#§ = §>3§(§1!3§.levelObjects.addObject(§>3§.§2_§,x / §'!1§.§<!@§,y / §'!1§.§<!@§,0,§]j§.§4"1§));
         §;0§.§@!^§.camera.§`4§(§ use§.§'!t§);
         §;0§.§@!^§.camera.§]u§ = §;0§.§@!^§.camera.§[!5§;
         if(mBirds.length > 0)
         {
            this.§7!6§ = mBirds[mNextBirdIndex];
            this.§7!6§.§+y§();
            (this.§7!6§ as §>`§).§?!w§(§>!J§,§;`§,this.§7!6§.§?U§,this.§7!6§.§3A§);
         }
         else
         {
            §[![§(§?K§);
         }
         var _loc1_:§6"3§ = §]t§(§ !B§.§2_§,§>!J§,§;`§);
         this.§]!u§(_loc1_);
         this.§^F§ = _loc1_;
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         super.shootCurrentBird(param1,param2);
         this.§7!6§ = null;
         if(this.§?#§)
         {
            this.§?#§.dispose();
            this.§?#§ = null;
         }
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         if(this.§7!6§)
         {
            if((this.§7!6§ as §>`§).§3!#§())
            {
               return false;
            }
         }
         return super.canStartDragging(param1);
      }
      
      override protected function playStretchSound() : void
      {
         this.§00§.playSoundLua("slingshot_stretched");
      }
      
      override protected function playBirdShotSound() : void
      {
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         super.update(param1,param2);
         if(this.§?#§)
         {
            this.§?#§.§@!h§(this.§^F§.x / §'!1§.§<!@§,this.§^F§.y / §'!1§.§<!@§,false,true);
         }
      }
      
      override protected function showScoreForRemainingBird(param1:§6"3§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§!!O§;
         if((_loc4_ = param1.levelItem as §!!O§) && _loc4_.spriteScore)
         {
            §1!3§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§]j§.§4"1§,false,false,false,3,true);
            _loc3_ = false;
         }
         §1!3§.addScore(param2,§8R§.§2?§,_loc3_,param1.x,param1.y - 3);
      }
      
      private function §]!u§(param1:§6"3§) : void
      {
         §1!3§.levelObjects.addObject("birdSpecial_laser_activation",§;0§.§@!^§.slingshot.x,§;0§.§@!^§.slingshot.y,0,§]j§.§4"1§,false,false,false,1,true);
      }
   }
}
