package §?$#§
{
   import §#Z§.Sprite;
   import §-!j§.§-"8§;
   import §-!j§.§>!8§;
   import §-!j§.§>!g§;
   import §?o§.§ ^§;
   import §^0§.§%"^§;
   
   public class §,#C§ extends §2!"§
   {
       
      
      public function §,#C§(param1:§<d§, param2:§ ^§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§-"8§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §;![§
      {
         if(param1 is §>!g§)
         {
            return new §@!X§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§;![§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§>!8§;
         if((_loc4_ = param1.levelItem as §>!8§) && _loc4_.spriteScore)
         {
            § 6§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§%"^§.ID_NEXT_FREE,false,false,false,3,true);
            _loc3_ = false;
         }
         § 6§.addScore(param2,§-V§.§-"u§,_loc3_,param1.x,param1.y - 3,-9999,_loc4_.floatingScoreFont);
      }
      
      override protected function showDestructionParticles(param1:§;![§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§>!8§ = param1.levelItem as §>!8§;
         if(_loc2_ && _loc2_.§="J§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§="J§)
            {
               if(_loc4_ = _loc2_.§+"x§(_loc3_))
               {
                  § 6§.objects.addObject(_loc4_,param1.x,param1.y,0,§%"^§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
