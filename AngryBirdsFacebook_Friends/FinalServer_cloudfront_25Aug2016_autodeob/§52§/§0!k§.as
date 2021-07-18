package §52§
{
   import §#v§.§-"R§;
   import §9$§.Sprite;
   import §[#a§.§6"[§;
   import §`#C§.§4o§;
   import §`#C§.§8K§;
   import §`#C§.§`$9§;
   
   public class §0!k§ extends §@M§
   {
       
      
      public function §0!k§(param1:§#!,§, param2:§-"R§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§8K§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §5!&§
      {
         if(param1 is §`$9§)
         {
            return new § !x§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function showScoreForRemainingBird(param1:§5!&§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§4o§;
         if((_loc4_ = param1.levelItem as §4o§) && _loc4_.spriteScore)
         {
            §,#2§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§6"[§.ID_NEXT_FREE,false,false,false,3,true);
            _loc3_ = false;
         }
         §,#2§.addScore(param2,§6" §.§!$%§,_loc3_,param1.x,param1.y - 3);
      }
      
      override protected function showDestructionParticles(param1:§5!&§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§4o§ = param1.levelItem as §4o§;
         if(_loc2_ && _loc2_.§8v§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§8v§)
            {
               if(_loc4_ = _loc2_.§ !E§(_loc3_))
               {
                  §,#2§.objects.addObject(_loc4_,param1.x,param1.y,0,§6"[§.ID_NEXT_FREE,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
