package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §8!M§ extends §8!1§
   {
       
      
      protected var §0Z§:Number;
      
      protected var §<#?§:Number;
      
      protected var §]!!§:Number;
      
      protected var §"$9§:Number;
      
      public function §8!M§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         super(param1,param2,param3,param4,param5,param10);
         this.§0Z§ = param6;
         this.§<#?§ = param7;
         this.§]!!§ = param8;
         this.§"$9§ = param9;
      }
      
      override protected function explodeBeforeRemoving(param1:§ #'§) : void
      {
         if(param1)
         {
            param1.§2,§(getBody().GetPosition().x,getBody().GetPosition().y,this.§0Z§,this.§<#?§,this.§]!!§,this.§"$9§);
         }
      }
   }
}
