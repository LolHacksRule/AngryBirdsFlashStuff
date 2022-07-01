package §2!k§
{
   import § !=§.Sprite;
   import §!P§.§2"4§;
   import §7!<§.§4r§;
   import §;L§.§=l§;
   import §[^§.§`!M§;
   import §]A§.§[d§;
   
   public class §2!+§ extends §^O§
   {
       
      
      public function §2!+§(param1:§[d§, param2:§2"4§, param3:Sprite, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function objectIsOutOfBounds(param1:§,@§) : Boolean
      {
         return false;
      }
      
      override protected function addObjectBird(param1:§4r§, param2:Sprite, param3:§=l§, param4:§`!M§, param5:Number = 1.0, param6:Boolean = true) : §6",§
      {
         var _loc7_:§6",§;
         (_loc7_ = super.addObjectBird(param1,param2,param3,param4,param5,param6)).§=!D§();
         return _loc7_;
      }
   }
}
