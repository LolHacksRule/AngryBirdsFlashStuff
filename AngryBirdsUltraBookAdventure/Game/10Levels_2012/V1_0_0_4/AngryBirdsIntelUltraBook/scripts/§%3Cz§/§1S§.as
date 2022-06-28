package §<z§
{
   import §3!8§.§0z§;
   import §6!M§.§9!d§;
   import flash.display.Sprite;
   
   public class §1S§ extends Sprite
   {
      
      public static var §<K§:Object = {};
       
      
      protected var §++§:§9!d§;
      
      protected var §3o§:§0z§;
      
      public function §1S§()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(param1:§9!d§) : void
      {
         this.§++§ = param1;
         this.update();
      }
      
      public function get data() : §9!d§
      {
         return this.§++§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §@!E§() : Boolean
      {
         return this.data.userId == §^!s§.§-!1§;
      }
      
      protected function §3W§() : void
      {
         if(this.§3o§ && this.§3o§.parent == this && this.§3o§ == §<K§[this.data.userId])
         {
            return;
         }
         if(this.§3o§ && this.§3o§.parent == this)
         {
            removeChild(this.§3o§);
            this.§3o§ = null;
         }
         if(§<K§[this.data.userId])
         {
            addChild(this.§3o§ = §<K§[this.data.userId]);
         }
         else
         {
            this.§3o§ = new §0z§(this.data.userId,this.data.avatarString,false);
            this.§3o§.x = 5;
            this.§3o§.y = 5;
            §<K§[this.data.userId] = this.§3o§;
            addChild(this.§3o§);
         }
      }
   }
}
