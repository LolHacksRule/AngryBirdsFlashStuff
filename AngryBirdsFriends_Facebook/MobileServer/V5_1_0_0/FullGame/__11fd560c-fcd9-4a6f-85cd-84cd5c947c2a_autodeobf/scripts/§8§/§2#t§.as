package §8§#8
{
   import §4"O§.b2World;
   import §8"L§.§4U§;
   import §>M§.§["z§;
   import §^"S§.Sprite;
   import §`"8§.§0$2§;
   
   public class §2#t§ extends §<#D§
   {
       
      
      private var §^"o§:Boolean = false;
      
      public function §2#t§(param1:Sprite, param2:§0$2§, param3:b2World, param4:§4U§, param5:§["z§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §8a§() : void
      {
         this.§^"o§ = true;
      }
      
      override public function update(param1:Number, param2:§&#V§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§^"o§)
         {
            health = 0;
         }
      }
   }
}
