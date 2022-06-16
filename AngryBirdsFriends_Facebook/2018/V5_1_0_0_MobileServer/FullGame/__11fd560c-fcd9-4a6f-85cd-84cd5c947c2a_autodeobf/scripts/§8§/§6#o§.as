package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §6#o§ extends §<#D§
   {
       
      
      protected var §!!>§:Number;
      
      protected var §,"1§:Number;
      
      protected var §""6§:Number;
      
      protected var §>#7§:Number;
      
      public function §6#o§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§!!>§ = param6;
         this.§,"1§ = param7;
         this.§""6§ = param8;
         this.§>#7§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§&#V§) : void
      {
         if(param1)
         {
            param1.§5#A§(getBody().GetPosition().x,getBody().GetPosition().y,this.§!!>§,this.§,"1§,this.§""6§,this.§>#7§);
         }
      }
   }
}
