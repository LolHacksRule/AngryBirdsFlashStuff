package §^#>§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7P§.§=1§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   
   public class § !Y§ extends §2#!§
   {
       
      
      private var §^#^§:§8!B§;
      
      public function § !Y§(param1:§#_§, param2:§8!B§, param3:Sprite)
      {
         this.§^#^§ = param2;
         super(param1,param2,param3);
      }
      
      override public function useMightyEagle() : §`"]§
      {
         var _loc2_:§`"]§ = null;
         if(§,!?§.length > 0)
         {
            _loc2_ = §,!?§[0];
            if(_loc2_.name == §=1§.§+"§)
            {
               return null;
            }
            §%"'§(0,true);
         }
         var _loc1_:§`"]§ = addSlingshotObject(§=1§.§+"§,§8!+§,§=!Z§,0,0);
         _loc1_.setOnSlingshot(true);
         _loc1_.§6<§ = false;
         §8"F§(§<"F§);
         return _loc1_;
      }
      
      override protected function playStretchSound() : void
      {
         §?!r§.§"#_§("slingshot_streched");
      }
      
      override protected function getRopeImage(param1:uint) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         if(§6e§.frameCount > 3 && param1 == §+#5§)
         {
            _loc2_ = §6e§.getFrame(3);
            _loc2_.pivotX = 0;
            _loc2_.pivotY = 0;
            return _loc2_;
         }
         return super.getRopeImage(param1);
      }
      
      override protected function showDestructionParticles(param1:§`"]§) : void
      {
         if(param1.name == §=1§.§+"§)
         {
            return;
         }
         super.showDestructionParticles(param1);
      }
      
      override protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:DisplayObject = null;
         if(§6e§.frameCount > 3 && param1 == §+#5§)
         {
            _loc3_ = §6e§.getFrame(2);
            _loc3_.pivotX = 0;
            _loc3_.pivotY = 0;
            return _loc3_;
         }
         return super.getHolsterImage(param1,param2);
      }
      
      override protected function groundSlingshot() : void
      {
         if(this.§^#^§.name == "boss_trenchrun")
         {
            return;
         }
         super.groundSlingshot();
      }
   }
}
