package §@0§
{
   import §8"L§.§4U§;
   import §8"L§.§5K§;
   import §8"L§.§9"T§;
   import §8§.§!#L§;
   import §;$3§.§>f§;
   import §^"S§.Sprite;
   
   public class §,"%§ extends § !o§
   {
       
      
      public function §,"%§(param1:§%!q§, param2:§>f§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§4U§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §4!_§
      {
         if(param1 is §9"T§)
         {
            return new §%"+§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§4!_§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§5K§;
         if((_loc4_ = param1.levelItem as §5K§) && _loc4_.spriteScore)
         {
            §=#N§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§!#L§.ID_NEXT_FREE,false,false,false,3,true);
            _loc3_ = false;
         }
         §=#N§.addScore(param2,§&"A§.§9"G§,_loc3_,param1.x,param1.y - 3,-9999,_loc4_.floatingScoreFont);
      }
      
      override protected function showDestructionParticles(param1:§4!_§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§5K§ = param1.levelItem as §5K§;
         if(_loc2_ && _loc2_.§<#&§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§<#&§)
            {
               if(_loc4_ = _loc2_.§7#x§(_loc3_))
               {
                  §=#N§.objects.addObject(_loc4_,param1.x,param1.y,0,§!#L§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
