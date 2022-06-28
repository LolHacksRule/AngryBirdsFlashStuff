package §]z§
{
   import §4[§.§?O§;
   import §;!q§.§=t§;
   import flash.display.Sprite;
   
   public class §1!?§ extends Sprite
   {
      
      public static var §1O§:Object = {};
       
      
      protected var §0A§:§?O§;
      
      protected var §>r§:§=t§;
      
      public function §1!?§()
      {
         super();
         rotation = -90;
         y = 180;
      }
      
      public function set data(param1:§?O§) : void
      {
         this.§0A§ = param1;
         this.update();
      }
      
      public function get data() : §?O§
      {
         return this.§0A§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §1c§() : Boolean
      {
         return this.data.userId == §#!F§.§8%§;
      }
      
      protected function §3!F§() : void
      {
         if(this.§>r§ && this.§>r§.parent == this && this.§>r§ == §1O§[this.data.userId])
         {
            return;
         }
         if(this.§>r§ && this.§>r§.parent == this)
         {
            removeChild(this.§>r§);
            this.§>r§ = null;
         }
         if(§1O§[this.data.userId])
         {
            addChild(this.§>r§ = §1O§[this.data.userId]);
         }
         else
         {
            this.§>r§ = new §=t§(this.data.userId,this.data.avatarString,false);
            this.§>r§.x = 5;
            this.§>r§.y = 5;
            §1O§[this.data.userId] = this.§>r§;
            addChild(this.§>r§);
         }
      }
   }
}
