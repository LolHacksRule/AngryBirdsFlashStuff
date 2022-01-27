package §3R§
{
   import §4",§.§3v§;
   import §4"@§.Sprite;
   import §5"D§.§3!3§;
   import §6!M§.§9`§;
   import §6!M§.§;!4§;
   import §6!M§.§<!r§;
   
   public class §"5§ extends §,@§
   {
       
      
      public function §"5§(param1:§1!R§, param2:§3v§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§<!r§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §;!h§
      {
         if(param1 is §9`§)
         {
            return new §]"4§(this,param5,param1.itemName,param1,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
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
      
      override protected function showDestructionParticles(param1:§;!h§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§;!4§ = param1.levelItem as §;!4§;
         if(_loc2_ && _loc2_.§+! § > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§+! §)
            {
               if(_loc4_ = _loc2_.§,!Q§(_loc3_))
               {
                  §;H§.objects.addObject(_loc4_,param1.x,param1.y,0,§3!3§.§'!y§,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
