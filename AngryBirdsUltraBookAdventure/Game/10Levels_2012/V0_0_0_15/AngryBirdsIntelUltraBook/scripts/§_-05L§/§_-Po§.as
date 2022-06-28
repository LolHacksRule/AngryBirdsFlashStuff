package §_-05L§
{
   import §_-01E§.§_-M3§;
   import §_-hX§.§_-pI§;
   import flash.display.Sprite;
   
   public class §_-Po§ extends Sprite
   {
      
      public static var §_-0B9§:Object = {};
       
      
      protected var §_-WB§:§_-M3§;
      
      protected var §_-rL§:§_-pI§;
      
      public function §_-Po§()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(param1:§_-M3§) : void
      {
         this.§_-WB§ = param1;
         this.update();
      }
      
      public function get data() : §_-M3§
      {
         return this.§_-WB§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §_-h7§() : Boolean
      {
         return this.data.userId == §_-K5§.§_-EE§;
      }
      
      protected function §_-0-m§() : void
      {
         if(this.§_-rL§ && this.§_-rL§.parent == this && this.§_-rL§ == §_-0B9§[this.data.userId])
         {
            return;
         }
         if(this.§_-rL§ && this.§_-rL§.parent == this)
         {
            removeChild(this.§_-rL§);
            this.§_-rL§ = null;
         }
         if(§_-0B9§[this.data.userId])
         {
            addChild(this.§_-rL§ = §_-0B9§[this.data.userId]);
         }
         else
         {
            this.§_-rL§ = new §_-pI§(this.data.userId,this.data.avatarString,false);
            this.§_-rL§.x = 5;
            this.§_-rL§.y = 5;
            §_-0B9§[this.data.userId] = this.§_-rL§;
            addChild(this.§_-rL§);
         }
      }
   }
}
