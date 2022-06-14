package §9"%§
{
   import §%!v§.§[<§;
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §"!^§ extends §&!r§
   {
       
      
      public function §"!^§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Array = null;
         super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(§[" § <= 0)
         {
            _loc7_ = §2!>§.split("_");
            (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("3001-" + _loc7_[_loc7_.length - 1]);
         }
         return §[" §;
      }
   }
}
