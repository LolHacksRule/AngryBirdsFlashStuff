package §,h§
{
   import §!X§.§#K§;
   import §!X§.§86§;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §@!S§ extends §4!9§
   {
       
      
      public function §@!S§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         §>v§(§#K§.§3u§);
         return true;
      }
   }
}
