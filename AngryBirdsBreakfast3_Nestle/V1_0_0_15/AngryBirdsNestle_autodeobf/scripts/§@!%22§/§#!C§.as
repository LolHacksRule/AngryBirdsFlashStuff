package §@!"§
{
   import §%!B§.§5L§;
   import §%8§.§@-§;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@V§.§#=§;
   
   public class §#!C§ extends §<!l§
   {
       
      
      public function §#!C§(param1:§#=§, param2:§5L§, param3:Sprite, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function objectIsOutOfBounds(param1:§#!v§) : Boolean
      {
         return false;
      }
      
      override protected function addObjectBird(param1:§,!A§, param2:Sprite, param3:§;!Q§, param4:§@-§, param5:Number = 1.0, param6:Boolean = true) : §^"2§
      {
         var _loc7_:§^"2§;
         (_loc7_ = super.addObjectBird(param1,param2,param3,param4,param5,param6)).§@!M§ = true;
         return _loc7_;
      }
   }
}
