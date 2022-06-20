package § !D§
{
   import §!6§.Sprite;
   import §"$=§.§=$&§;
   import §-!!§.§7S§;
   import §?§.§!#<§;
   import §?§.§,Y§;
   import §?§.§7E§;
   
   public class §#"b§ extends §"b§
   {
       
      
      public function §#"b§(param1:§'"u§, param2:§=$&§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§,Y§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §;M§
      {
         if(param1 is §!#<§)
         {
            return new §-,§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§;M§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§7E§;
         if((_loc4_ = param1.levelItem as §7E§) && _loc4_.spriteScore)
         {
            §&!g§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§7S§.ID_NEXT_FREE,false,false,false,3,true);
            _loc3_ = false;
         }
         §&!g§.addScore(param2,§@#z§.§@"f§,_loc3_,param1.x,param1.y - 3,-9999,_loc4_.floatingScoreFont);
      }
      
      override protected function showDestructionParticles(param1:§;M§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§7E§ = param1.levelItem as §7E§;
         if(_loc2_ && _loc2_.§@#h§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§@#h§)
            {
               if(_loc4_ = _loc2_.§%"U§(_loc3_))
               {
                  §&!g§.objects.addObject(_loc4_,param1.x,param1.y,0,§7S§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
