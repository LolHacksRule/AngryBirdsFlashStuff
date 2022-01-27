package §"§#0
{
   import §!r§.§9"f§;
   import §#g§.§11§;
   import §#g§.§5!M§;
   import §#g§.§["%§;
   import §null §.§>#-§;
   import §use§.Sprite;
   
   public class §5X§ extends §%#7§
   {
       
      
      public function §5X§(param1:§;!E§, param2:§>#-§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§["%§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §1!T§
      {
         if(param1 is §11§)
         {
            return new §7O§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§1!T§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§5!M§;
         if((_loc4_ = param1.levelItem as §5!M§) && _loc4_.spriteScore)
         {
            §+!E§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§9"f§.§["_§,false,false,false,3,true);
            _loc3_ = false;
         }
         §+!E§.addScore(param2,§0!0§.§[[§,_loc3_,param1.x,param1.y - 3);
      }
      
      override protected function showDestructionParticles(param1:§1!T§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§5!M§ = param1.levelItem as §5!M§;
         if(_loc2_ && _loc2_.§<! § > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§<! §)
            {
               if(_loc4_ = _loc2_.§+!&§(_loc3_))
               {
                  §+!E§.objects.addObject(_loc4_,param1.x,param1.y,0,§9"f§.§["_§,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
