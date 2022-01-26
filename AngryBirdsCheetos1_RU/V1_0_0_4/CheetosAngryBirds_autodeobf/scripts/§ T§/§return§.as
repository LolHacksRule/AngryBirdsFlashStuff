package § T§
{
   import §&i§.b2World;
   import §1!A§.Sprite;
   import §7z§.§0!D§;
   import §7z§.§]!-§;
   
   public class §return§ extends §1M§
   {
       
      
      public function §return§(param1:§1!'§, param2:Sprite, param3:b2World, param4:§]!-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§1!'§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §!!X§(§0!D§.§^!W§);
         return true;
      }
   }
}
