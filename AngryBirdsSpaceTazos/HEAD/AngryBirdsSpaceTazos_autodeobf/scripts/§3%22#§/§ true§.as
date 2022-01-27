package §3"#§
{
   import §&!]§.Sprite;
   import §1z§.§2#§;
   import §3>§.§-"8§;
   import §3>§.§-f§;
   import §3>§.§1!;§;
   import §9"!§.§"" §;
   
   public class § true§ extends §0k§
   {
       
      
      public function § true§(param1:§`"8§, param2:§2#§, param3:Sprite)
      {
         super(param1,param2,param3,!!param2.hasGround ? Number(1) : Number(0.5),param2.hasGround,param2.worldGravity > 0);
      }
      
      override protected function initializeSlingshotObject(param1:§-"8§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §'"&§
      {
         if(param1 is §1!;§)
         {
            return new §=![§(this,param5,param1.itemName,param1,param2,param3,param4);
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      override protected function showScoreForRemainingBird(param1:§'"&§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:§-f§;
         if((_loc4_ = param1.levelItem as §-f§) && _loc4_.spriteScore)
         {
            §'"9§.objects.addObject(_loc4_.spriteScore,param1.x,param1.y - 3,0,§"" §.§%A§,false,false,false,3,true);
            _loc3_ = false;
         }
         §'"9§.addScore(param2,§ 7§.§>"G§,_loc3_,param1.x,param1.y - 3);
      }
      
      override protected function showDestructionParticles(param1:§'"&§) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc2_:§-f§ = param1.levelItem as §-f§;
         if(_loc2_ && _loc2_.§2!<§ > 0)
         {
            _loc3_ = 0;
            while(_loc3_ < _loc2_.§2!<§)
            {
               if(_loc4_ = _loc2_.§7+§(_loc3_))
               {
                  §'"9§.objects.addObject(_loc4_,param1.x,param1.y,0,§"" §.§%A§,false,true,false,1,true);
               }
               _loc3_++;
            }
         }
      }
   }
}
