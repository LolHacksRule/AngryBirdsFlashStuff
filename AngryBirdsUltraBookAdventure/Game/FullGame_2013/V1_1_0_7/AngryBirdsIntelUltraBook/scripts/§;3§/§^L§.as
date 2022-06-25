package §;3§
{
   import § var§.§ 4§;
   import § var§.§!u§;
   import §#I§.b2World;
   import §40§.§5G§;
   import §[;§.§#!6§;
   import §`g§.Sprite;
   
   public class §^L§ extends §!u§
   {
       
      
      public function §^L§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param3))
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         while(§0M§ <= 0)
         {
            if(!(_loc7_ && param3))
            {
               §§push(AngryBirdsFP11.sUserProgress as §#!6§);
               §§push("1000-");
               if(!_loc7_)
               {
                  §§push(§§pop() + §-!>§.split("_")[3]);
               }
               §§pop().§<!_§(§§pop());
            }
            if(!_loc7_)
            {
               break;
            }
         }
         return §0M§;
      }
   }
}
