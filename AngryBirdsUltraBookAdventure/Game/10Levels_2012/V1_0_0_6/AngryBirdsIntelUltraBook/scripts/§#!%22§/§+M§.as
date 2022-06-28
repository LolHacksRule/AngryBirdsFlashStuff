package §#!"§
{
   import §#&§.§`S§;
   import §%t§.§9!7§;
   import flash.display.Sprite;
   
   public class §+M§ extends Sprite
   {
      
      public static var §-o§:Object = {};
       
      
      protected var §%v§:§`S§;
      
      protected var §6!'§:§9!7§;
      
      public function §+M§()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(param1:§`S§) : void
      {
         this.§%v§ = param1;
         this.update();
      }
      
      public function get data() : §`S§
      {
         return this.§%v§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §8B§() : Boolean
      {
         return this.data.userId == §"U§.§7!2§;
      }
      
      protected function §!R§() : void
      {
         if(this.§6!'§ && this.§6!'§.parent == this && this.§6!'§ == §-o§[this.data.userId])
         {
            return;
         }
         if(this.§6!'§ && this.§6!'§.parent == this)
         {
            removeChild(this.§6!'§);
            this.§6!'§ = null;
         }
         if(§-o§[this.data.userId])
         {
            addChild(this.§6!'§ = §-o§[this.data.userId]);
         }
         else
         {
            this.§6!'§ = new §9!7§(this.data.userId,this.data.avatarString,false);
            this.§6!'§.x = 5;
            this.§6!'§.y = 5;
            §-o§[this.data.userId] = this.§6!'§;
            addChild(this.§6!'§);
         }
      }
   }
}
