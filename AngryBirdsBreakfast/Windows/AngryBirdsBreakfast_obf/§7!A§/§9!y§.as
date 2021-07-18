package §7!A§
{
   import §#"&§.§4!W§;
   import §0"$§.§"!a§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import com.angrybirds.§&!"§;
   
   public class §9!y§ extends §#"'§
   {
       
      
      public function §9!y§(param1:§"!a§, param2:§5!Y§, param3:§4!W§, param4:§6h§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            super(param1,param2,param3,param4);
         }
      }
      
      public function isEagleUsed() : Boolean
      {
         return false;
      }
      
      public function §1!Q§() : Boolean
      {
         return true;
      }
      
      public function §<!I§() : Boolean
      {
         return true;
      }
      
      public function isAllowedToChangeVictoryState() : Boolean
      {
         return true;
      }
      
      public function §[-§() : Boolean
      {
         return true;
      }
      
      override public function enable(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super.enable(param1);
         }
         do
         {
            §&!"§.§1!D§.background.§`!e§();
         }
         while(_loc3_);
         
      }
   }
}
