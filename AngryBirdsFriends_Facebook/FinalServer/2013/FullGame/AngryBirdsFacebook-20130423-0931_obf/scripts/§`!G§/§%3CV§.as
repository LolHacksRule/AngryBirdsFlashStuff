package §`!G§
{
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!%§.§#!$§;
   
   public class §<V§ extends §[!8§
   {
       
      
      public function §<V§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            while(§ d§ <= 0)
            {
               if(_loc8_)
               {
                  §§push(AngryBirdsFP11.sUserProgress as §#!$§);
                  §§push("1000-");
                  if(_loc8_ || this)
                  {
                     §§push(§§pop() + §@x§.split("_")[3]);
                  }
                  §§pop().§9!'§(§§pop());
               }
               if(_loc8_)
               {
                  addr77:
                  break;
               }
            }
            return § d§;
         }
         §§goto(addr77);
      }
   }
}
