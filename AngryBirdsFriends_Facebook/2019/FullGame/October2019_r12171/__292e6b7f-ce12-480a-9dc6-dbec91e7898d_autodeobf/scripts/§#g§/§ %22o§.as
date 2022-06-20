package §#g§
{
   import §,#e§.Sprite;
   import §7#$§.§?# §;
   import §8#K§.§ !=§;
   import §8#K§.§&2§;
   import §8#K§.§[#!§;
   import §;!=§.§ !i§;
   
   public class § "o§ extends §^"R§
   {
       
      
      public function § "o§(param1:§8#3§, param2:§?# §, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§&2§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §1#0§
      {
         if(param1 is §[#!§)
         {
            return new §?"Q§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§1#0§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§ !=§;
         if((_loc4_ = param1.levelItem as § !=§) && _loc4_.spriteScore)
         {
            §9!E§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§ !i§.ID_NEXT_FREE,false,false,false,3,true);
            _loc3_ = false;
         }
         §9!E§.addScore(param2,§%!a§.§+#k§,_loc3_,param1.x,param1.y - 3,-9999,_loc4_.floatingScoreFont);
      }
      
      override protected function showDestructionParticles(param1:§1#0§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§ !=§ = param1.levelItem as § !=§;
         if(_loc2_ && _loc2_.§2"a§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§2"a§)
            {
               if(_loc4_ = _loc2_.§;!e§(_loc3_))
               {
                  §9!E§.objects.addObject(_loc4_,param1.x,param1.y,0,§ !i§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
