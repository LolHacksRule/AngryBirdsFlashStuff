package §+!C§
{
   import §&!v§.Sprite;
   import §7"&§.§!"v§;
   import §7"&§.§"!U§;
   import §7"&§.§2p§;
   import §>!5§.§6#-§;
   import §@#§.§]#B§;
   
   public class §+$7§ extends §]#b§
   {
       
      
      public function §+$7§(param1:§!!S§, param2:§]#B§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§!"v§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §@"@§
      {
         if(param1 is §"!U§)
         {
            return new §=!T§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§@"@§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§2p§;
         if((_loc4_ = param1.levelItem as §2p§) && _loc4_.spriteScore)
         {
            §`=§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§6#-§.ID_NEXT_FREE,false,false,false,3,true);
            _loc3_ = false;
         }
         §`=§.addScore(param2,§2"b§.§5#Y§,_loc3_,param1.x,param1.y - 3,-9999,_loc4_.floatingScoreFont);
      }
      
      override protected function showDestructionParticles(param1:§@"@§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§2p§ = param1.levelItem as §2p§;
         if(_loc2_ && _loc2_.§!$"§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§!$"§)
            {
               if(_loc4_ = _loc2_.§'i§(_loc3_))
               {
                  §`=§.objects.addObject(_loc4_,param1.x,param1.y,0,§6#-§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
