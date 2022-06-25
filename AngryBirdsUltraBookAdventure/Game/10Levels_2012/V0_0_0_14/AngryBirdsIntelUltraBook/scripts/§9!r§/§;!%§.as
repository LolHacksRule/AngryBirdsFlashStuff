package §9!r§
{
   import § D§.b2World;
   import §'H§.§9!f§;
   import §+&§.§-!7§;
   import §9E§.Sprite;
   import §]![§.§4!H§;
   import §]![§.§[?§;
   
   public class §;!%§ extends §4!H§
   {
       
      
      public function §;!%§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!(_loc13_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            while(§%,§ <= 0)
            {
               if(_loc7_)
               {
                  break;
               }
               addr72:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               addr58:
               §§push(AngryBirdsFP11.sUserProgress as §9!f§);
               §§push("1000-");
               if(_loc8_)
               {
                  §§push(§§pop() + §@!p§.split("_")[3]);
               }
               §§pop().setEggUnlocked(§§pop());
               §§goto(addr72);
            }
            return §%,§;
         }
         §§goto(addr58);
      }
   }
}
