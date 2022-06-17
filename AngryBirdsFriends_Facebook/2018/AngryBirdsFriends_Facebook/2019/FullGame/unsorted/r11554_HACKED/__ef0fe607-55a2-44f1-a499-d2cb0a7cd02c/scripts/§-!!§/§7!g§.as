package §-!!§
{
   import §!6§.Sprite;
   import §8#t§.b2World;
   import §9$+§.§9"4§;
   import §?§.§,Y§;
   import §^"[§.§4!8§;
   
   public class §7!g§ extends §8!1§
   {
       
      
      private var §&"0§:Boolean = false;
      
      public function §7!g§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:§9"4§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §9#Q§() : void
      {
         this.§&"0§ = true;
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§&"0§)
         {
            health = 0;
         }
      }
   }
}
