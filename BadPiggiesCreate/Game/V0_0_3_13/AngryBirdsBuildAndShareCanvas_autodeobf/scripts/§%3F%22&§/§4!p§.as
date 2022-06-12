package §?"&§
{
   import §7!q§.b2World;
   import §8!E§.§1!6§;
   import §8!E§.§?!X§;
   import §`L§.Sprite;
   
   public class §4!p§ extends §`!k§
   {
       
      
      public function §4!p§(param1:§5b§, param2:Sprite, param3:b2World, param4:§?!X§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§5b§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §0H§(§1!6§.§%!c§);
         return true;
      }
   }
}
