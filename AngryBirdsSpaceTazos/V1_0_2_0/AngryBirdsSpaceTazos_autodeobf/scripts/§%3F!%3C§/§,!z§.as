package §?!<§
{
   import §'!&§.Sprite;
   import §;!0§.§!!X§;
   import §;"=§.§!!O§;
   import §;"=§.§[e§;
   import §;"=§.§]"<§;
   import §[,§.§]j§;
   
   public class §,!z§ extends §&V§
   {
       
      
      public function §,!z§(param1:§'!1§, param2:§!!X§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§]"<§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §6"3§
      {
         if(param1 is §[e§)
         {
            return new §0O§(this,param5,param1.itemName,param1,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
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
      
      override protected function showDestructionParticles(param1:§6"3§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§!!O§ = param1.levelItem as §!!O§;
         if(_loc2_ && _loc2_.§=0§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§=0§)
            {
               if(_loc4_ = _loc2_.§6!§(_loc3_))
               {
                  §1!3§.objects.addObject(_loc4_,param1.x,param1.y,0,§]j§.§4"1§,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
