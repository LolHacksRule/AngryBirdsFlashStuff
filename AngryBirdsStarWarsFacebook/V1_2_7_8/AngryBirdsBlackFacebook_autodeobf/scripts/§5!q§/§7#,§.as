package §5!q§
{
   import §,#+§.§<U§;
   import §1"s§.Sprite;
   import §6"R§.§super§;
   import §>P§.§&"§;
   import §>P§.§;+§;
   import §>P§.§=!,§;
   
   public class §7#,§ extends §-R§
   {
       
      
      public function §7#,§(param1:§3"X§, param2:§<U§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§=!,§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §+e§
      {
         if(param1 is §&"§)
         {
            return new §<K§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§+e§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§;+§;
         if((_loc4_ = param1.levelItem as §;+§) && _loc4_.spriteScore)
         {
            §]""§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§super§.§4"D§,false,false,false,3,true);
            _loc3_ = false;
         }
         §]""§.addScore(param2,§"!A§.§5"h§,_loc3_,param1.x,param1.y - 3);
      }
      
      override protected function showDestructionParticles(param1:§+e§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§;+§ = param1.levelItem as §;+§;
         if(_loc2_ && _loc2_.§,=§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§,=§)
            {
               if(_loc4_ = _loc2_.§ " §(_loc3_))
               {
                  §]""§.objects.addObject(_loc4_,param1.x,param1.y,0,§super§.§4"D§,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
