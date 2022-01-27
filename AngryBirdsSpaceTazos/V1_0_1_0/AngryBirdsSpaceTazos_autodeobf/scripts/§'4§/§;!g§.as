package §'4§
{
   import §"!&§.§+W§;
   import §"!&§.§8X§;
   import §"!&§.§]!C§;
   import §7!8§.Sprite;
   import §]">§.§-%§;
   import §`!j§.§#b§;
   
   public class §;!g§ extends §3!n§
   {
       
      
      public function §;!g§(param1:§^g§, param2:§#b§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§8X§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §-T§
      {
         if(param1 is §+W§)
         {
            return new §1!+§(this,param5,param1.itemName,param1,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
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
      
      override protected function showDestructionParticles(param1:§-T§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§]!C§ = param1.levelItem as §]!C§;
         if(_loc2_ && _loc2_.§5$§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§5$§)
            {
               if(_loc4_ = _loc2_.§5<§(_loc3_))
               {
                  §?>§.objects.addObject(_loc4_,param1.x,param1.y,0,§-%§.§;!J§,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
