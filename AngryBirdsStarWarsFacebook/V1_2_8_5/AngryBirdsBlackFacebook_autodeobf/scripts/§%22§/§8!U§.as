package §"§#0
{
   import §!r§.§&$§;
   import §`"1§.§=Q§;
   import §null §.§>#-§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §8!U§ extends §5X§
   {
       
      
      private var §="l§:§>#-§;
      
      public function §8!U§(param1:§;!E§, param2:§>#-§, param3:Sprite)
      {
         this.§="l§ = param2;
         super(param1,param2,param3);
      }
      
      override public function useMightyEagle() : §1!T§
      {
         var _loc2_:§1!T§ = null;
         if(§&"P§.length > 0)
         {
            _loc2_ = §&"P§[0];
            if(_loc2_.name == §&$§.§5!L§)
            {
               return null;
            }
            §!U§(0,true);
         }
         var _loc1_:§1!T§ = addSlingshotObject(§&$§.§5!L§,§0U§,§3"[§,0,0);
         _loc1_.setOnSlingshot(true);
         _loc1_.§"!8§ = false;
         §]"<§(final);
         return _loc1_;
      }
      
      override protected function playStretchSound() : void
      {
         §=Q§.§`!A§("slingshot_streched");
      }
      
      override protected function getRopeImage(param1:uint) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         if(§"U§.frameCount > 3 && param1 == §3;§)
         {
            _loc2_ = §"U§.getFrame(3);
            _loc2_.pivotX = 0;
            _loc2_.pivotY = 0;
            return _loc2_;
         }
         return super.getRopeImage(param1);
      }
      
      override protected function showDestructionParticles(param1:§1!T§) : void
      {
         if(param1.name == §&$§.§5!L§)
         {
            return;
         }
         super.showDestructionParticles(param1);
      }
      
      override protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:DisplayObject = null;
         if(§"U§.frameCount > 3 && param1 == §3;§)
         {
            _loc3_ = §"U§.getFrame(2);
            _loc3_.pivotX = 0;
            _loc3_.pivotY = 0;
            return _loc3_;
         }
         return super.getHolsterImage(param1,param2);
      }
      
      override protected function groundSlingshot() : void
      {
         if(this.§="l§.name == "boss_trenchrun")
         {
            return;
         }
         super.groundSlingshot();
      }
   }
}
