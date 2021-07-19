package §]">§
{
   import §"!&§.§3",§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §+"A§ extends §?!`§
   {
       
      
      public function §+"A§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param3)
         {
            §""1§ = new §2n§(this,§3",§(param4));
            do
            {
               super(param1,param2,param3,param4,param5,param6,param7,param8);
            }
            while(!(_loc10_ || param2));
            
         }
      }
      
      public function updateOutOfCamera() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            health = 0;
         }
      }
   }
}
