package §@!"§
{
   import §%8§.§@-§;
   import §0"!§.b2FilterData;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   
   public class §#+§ extends §4!X§
   {
       
      
      public function §#+§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number, param7:int)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function createFilterData() : b2FilterData
      {
         var _loc1_:b2FilterData = super.createFilterData();
         _loc1_.§^!d§ = §"!]§;
         _loc1_.§+!+§ = 65535 & ~§[<§;
         return _loc1_;
      }
      
      override public function updateBeforeRemoving(param1:§`!m§) : void
      {
         super.updateBeforeRemoving(param1);
         if(param1)
         {
            param1.§<!Q§(§=q§.§'!`§,§!!I§().GetPosition().x,§!!I§().GetPosition().y);
         }
      }
      
      override public function collidedWith(param1:§#!v§) : void
      {
         health = 0;
      }
   }
}
