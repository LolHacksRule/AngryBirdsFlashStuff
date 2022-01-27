package §!r§
{
   import §!!k§.§1!^§;
   import §#g§.§["%§;
   import §=G§.§9v§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §2G§ extends §%E§
   {
       
      
      private var §!"8§:Boolean = false;
      
      public function §2G§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:§9v§, param6:Number)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      public function §<!>§() : void
      {
         this.§!"8§ = true;
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         if(!isMoving() && this.§!"8§)
         {
            health = 0;
         }
      }
   }
}
