package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§9B§;
   import §6![§.Sprite;
   import §8!K§.§5!0§;
   import §?s§.§8K§;
   import §@L§.§?!'§;
   
   public class §&!e§ extends §&"§
   {
       
      
      public function §&!e§(param1:§?!'§, param2:§5!0§, param3:Sprite, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function objectIsOutOfBounds(param1:§<!r§) : Boolean
      {
         return false;
      }
      
      override protected function ignoreExplosion(param1:§"_§) : Boolean
      {
         if(param1 is §?!z§)
         {
            return true;
         }
         return false;
      }
      
      override protected function addObjectBird(param1:§8K§, param2:Sprite, param3:§5!v§, param4:§9B§, param5:Number = 1.0, param6:Boolean = true) : §?!z§
      {
         var _loc7_:§?!z§;
         (_loc7_ = super.addObjectBird(param1,param2,param3,param4,param5,param6)).§8"+§ = true;
         return _loc7_;
      }
   }
}
