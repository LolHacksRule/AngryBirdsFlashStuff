package §-5§
{
   import §4H§.§4!R§;
   import §^`§.§,!K§;
   import flash.display.Sprite;
   
   public class § !<§ extends Sprite
   {
      
      public static var §="#§:Object = {};
       
      
      protected var §9%§:§4!R§;
      
      protected var §#!M§:§,!K§;
      
      public function § !<§()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(param1:§4!R§) : void
      {
         this.§9%§ = param1;
         this.update();
      }
      
      public function get data() : §4!R§
      {
         return this.§9%§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §[!U§() : Boolean
      {
         return this.data.userId == §+p§.§!!I§;
      }
      
      protected function §&!^§() : void
      {
         if(this.§#!M§ && this.§#!M§.parent == this && this.§#!M§ == §="#§[this.data.userId])
         {
            return;
         }
         if(this.§#!M§ && this.§#!M§.parent == this)
         {
            removeChild(this.§#!M§);
            this.§#!M§ = null;
         }
         if(§="#§[this.data.userId])
         {
            addChild(this.§#!M§ = §="#§[this.data.userId]);
         }
         else
         {
            this.§#!M§ = new §,!K§(this.data.userId,this.data.avatarString,false);
            this.§#!M§.x = 5;
            this.§#!M§.y = 5;
            §="#§[this.data.userId] = this.§#!M§;
            addChild(this.§#!M§);
         }
      }
   }
}
