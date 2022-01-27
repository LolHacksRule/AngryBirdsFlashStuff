package §6"R§
{
   import §1"s§.Sprite;
   import §1x§.b2World;
   import §3"$§.§[a§;
   import §4"F§.§^d§;
   import §>P§.§=!,§;
   
   public class §4!3§ extends §6"1§
   {
       
      
      private var §!?§:Boolean = false;
      
      public function §4!3§(param1:Sprite, param2:§[a§, param3:b2World, param4:§=!,§, param5:§^d§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §,"I§() : void
      {
         this.§!?§ = true;
      }
      
      override public function update(param1:Number, param2:§""M§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§!?§)
         {
            health = 0;
         }
      }
   }
}
