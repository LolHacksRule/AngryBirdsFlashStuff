package §>2§
{
   import §,"v§.§7!J§;
   import §6!3§.§'!§;
   import §6#H§.Sprite;
   import §?$<§.§<#x§;
   import §?$<§.§>#i§;
   import §?$<§.§?$>§;
   
   public class §0"e§ extends §6#t§
   {
       
      
      public function §0"e§(param1:§!6§, param2:§7!J§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§?$>§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §>#!§
      {
         if(param1 is §>#i§)
         {
            return new §7!4§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§>#!§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§<#x§;
         if((_loc4_ = param1.levelItem as §<#x§) && _loc4_.spriteScore)
         {
            §5#0§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§'!§.ID_NEXT_FREE,false,false,false,3,true);
            _loc3_ = false;
         }
         §5#0§.addScore(param2,§ $,§.§-B§,_loc3_,param1.x,param1.y - 3,-9999,_loc4_.floatingScoreFont);
      }
      
      override protected function showDestructionParticles(param1:§>#!§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§<#x§ = param1.levelItem as §<#x§;
         if(_loc2_ && _loc2_.§1"N§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§1"N§)
            {
               if(_loc4_ = _loc2_.§7;§(_loc3_))
               {
                  §5#0§.objects.addObject(_loc4_,param1.x,param1.y,0,§'!§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
