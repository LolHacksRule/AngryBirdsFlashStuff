package §9!U§
{
   import §#V§.b2World;
   import §,!§.§![§;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   import §=b§.§>!e§;
   import §=b§.§`!_§;
   
   public class §%D§ extends §`!_§
   {
       
      
      public function §%D§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         while(§&!>§ <= 0)
         {
            if(!(_loc8_ || this))
            {
               break;
            }
            addr77:
            if(!(_loc8_ || param3))
            {
               continue;
            }
            §§push(AngryBirdsFP11.sUserProgress as §![§);
            §§push("1000-");
            if(!_loc7_)
            {
               §§push(§§pop() + §^r§.split("_")[3]);
            }
            §§pop().setEggUnlocked(§§pop());
            §§goto(addr77);
         }
         return §&!>§;
      }
   }
}
