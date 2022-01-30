package §=!`§
{
   import § !T§.§7@§;
   import §%z§.§9!n§;
   import §,!q§.Sprite;
   import §-!b§.§<W§;
   import §0!s§.§5!L§;
   import §]k§.§<S§;
   
   public class §4!d§ extends §!H§
   {
       
      
      public function §4!d§(param1:§<S§, param2:§7@§, param3:Sprite, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function objectIsOutOfBounds(param1:§=6§) : Boolean
      {
         return false;
      }
      
      override protected function addObjectBird(param1:§5!L§, param2:Sprite, param3:§<W§, param4:§9!n§, param5:Number = 1.0, param6:Boolean = true) : §6!-§
      {
         var _loc7_:§6!-§;
         (_loc7_ = super.addObjectBird(param1,param2,param3,param4,param5,param6)).§%E§();
         return _loc7_;
      }
   }
}
