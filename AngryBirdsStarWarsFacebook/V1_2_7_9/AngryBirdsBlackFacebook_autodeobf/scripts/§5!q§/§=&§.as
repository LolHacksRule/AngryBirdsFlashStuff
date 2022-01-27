package §5!q§
{
   import §,"v§.§@§;
   import §,#+§.§<U§;
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §6"R§.§7#"§;
   
   public class §=&§ extends §7#,§
   {
       
      
      private var §=m§:§<U§;
      
      public function §=&§(param1:§3"X§, param2:§<U§, param3:Sprite)
      {
         this.§=m§ = param2;
         super(param1,param2,param3);
      }
      
      override public function useMightyEagle() : §+e§
      {
         var _loc2_:§+e§ = null;
         if(§1#!§.length > 0)
         {
            _loc2_ = §1#!§[0];
            if(_loc2_.name == §7#"§.§^!3§)
            {
               return null;
            }
            §>"§(0,true);
         }
         var _loc1_:§+e§ = addSlingshotObject(§7#"§.§^!3§,§]!_§,§#j§,0,0);
         _loc1_.setOnSlingshot(true);
         _loc1_.§#d§ = false;
         § !E§(§@+§);
         return _loc1_;
      }
      
      override protected function playStretchSound() : void
      {
         §@§.§=Y§("slingshot_streched");
      }
      
      override protected function getRopeImage(param1:uint) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         if(§+!p§.frameCount > 3 && param1 == §4"=§)
         {
            _loc2_ = §+!p§.getFrame(3);
            _loc2_.pivotX = 0;
            _loc2_.pivotY = 0;
            return _loc2_;
         }
         return super.getRopeImage(param1);
      }
      
      override protected function showDestructionParticles(param1:§+e§) : void
      {
         if(param1.name == §7#"§.§^!3§)
         {
            return;
         }
         super.showDestructionParticles(param1);
      }
      
      override protected function getHolsterImage(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc3_:DisplayObject = null;
         if(§+!p§.frameCount > 3 && param1 == §4"=§)
         {
            _loc3_ = §+!p§.getFrame(2);
            _loc3_.pivotX = 0;
            _loc3_.pivotY = 0;
            return _loc3_;
         }
         return super.getHolsterImage(param1,param2);
      }
      
      override protected function groundSlingshot() : void
      {
         if(this.§=m§.name == "boss_trenchrun")
         {
            return;
         }
         super.groundSlingshot();
      }
   }
}
