package §^#>§
{
   import §!!U§.Sprite;
   import §2"Y§.§"t§;
   import §2"Y§.§8!D§;
   import §2"Y§.§=+§;
   import §7P§.§;=§;
   import §?m§.§8!B§;
   
   public class §2#!§ extends §;x§
   {
       
      
      public function §2#!§(param1:§#_§, param2:§8!B§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§"t§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §`"]§
      {
         if(param1 is §=+§)
         {
            return new §-y§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§`"]§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§8!D§;
         if((_loc4_ = param1.levelItem as §8!D§) && _loc4_.spriteScore)
         {
            §2#G§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§;=§.§""3§,false,false,false,3,true);
            _loc3_ = false;
         }
         §2#G§.addScore(param2,§&'§.§1!W§,_loc3_,param1.x,param1.y - 3);
      }
      
      override protected function showDestructionParticles(param1:§`"]§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§8!D§ = param1.levelItem as §8!D§;
         if(_loc2_ && _loc2_.§-Q§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§-Q§)
            {
               if(_loc4_ = _loc2_.§="§(_loc3_))
               {
                  §2#G§.objects.addObject(_loc4_,param1.x,param1.y,0,§;=§.§""3§,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
