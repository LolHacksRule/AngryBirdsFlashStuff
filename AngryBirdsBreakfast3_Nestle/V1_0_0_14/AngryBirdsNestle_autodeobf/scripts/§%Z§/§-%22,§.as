package §%Z§
{
   import § 2§.§=+§;
   import §0!_§.§+!?§;
   import §2!s§.§!e§;
   import §8+§.§5"-§;
   import §`!B§.Sprite;
   
   public class §-",§ extends §7l§
   {
       
      
      public function §-",§(param1:§=+§, param2:§[d§, param3:Sprite, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function objectIsOutOfBounds(param1:§+!F§) : Boolean
      {
         return false;
      }
      
      override protected function addObjectBird(param1:§5"-§, param2:Sprite, param3:§+!?§, param4:§!e§, param5:Number = 1.0, param6:Boolean = true) : §=!V§
      {
         var _loc7_:§=!V§;
         (_loc7_ = super.addObjectBird(param1,param2,param3,param4,param5,param6)).§&8§ = true;
         return _loc7_;
      }
   }
}
