package §_-QI§
{
   import §_-TG§.§_-00u§;
   import §_-aU§.b2World;
   import §_-lt§.§_-30§;
   import §_-lt§.§_-eZ§;
   import §_-mh§.§_-09d§;
   import §_-uY§.Sprite;
   
   public class §_-ZP§ extends §_-eZ§
   {
       
      
      public function §_-ZP§(param1:§_-30§, param2:Sprite, param3:b2World, param4:§_-00u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
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
         while(§_-Kh§ <= 0)
         {
            if(_loc8_)
            {
               §§push(AngryBirdsFP11.sUserProgress as §_-09d§);
               §§push("1000-");
               if(!(_loc7_ && param3))
               {
                  §§push(§§pop() + §_-o2§.split("_")[3]);
               }
               §§pop().setEggUnlocked(§§pop());
            }
            if(_loc8_)
            {
               break;
            }
         }
         return §_-Kh§;
      }
   }
}
