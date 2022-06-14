package §-!+§
{
   import § " §.§2!!§;
   import §%!v§.§[<§;
   import §,"2§.§;6§;
   import §]!>§.§#"1§;
   import §]!>§.§0!!§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §=G§ extends Sprite
   {
      
      public static var §+!H§:Object = {};
       
      
      protected var §>">§:§#"1§;
      
      protected var §?"C§:§2!!§;
      
      protected var §6m§:§`1§;
      
      public function §=G§()
      {
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
      }
      
      public function set data(param1:§#"1§) : void
      {
         this.§>">§ = param1;
         this.update();
      }
      
      public function get data() : §#"1§
      {
         return this.§>">§;
      }
      
      public function update() : void
      {
      }
      
      protected function §`!§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§6m§ == null)
         {
            _loc1_ = this.§#d§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.§,!]§)
         {
            if(this.contains(this.§6m§.§;Q§))
            {
               removeChild(this.§6m§.§;Q§);
               this.§6m§ = null;
               return;
            }
         }
         if(this is §1C§)
         {
            §1C§(this).setCanSendGift(§0!!§.§;"§.§>!Y§(this.data.userId),false);
         }
         setChildIndex(this.§6m§.§;Q§,numChildren - 1);
         this.§6m§.§5!K§.addEventListener(MouseEvent.CLICK,this.§-t§,false,0,true);
      }
      
      protected function §#d§() : Boolean
      {
         if(!this.§,!]§)
         {
            this.§6m§ = new §`1§();
            addChild(this.§6m§.§;Q§);
            return true;
         }
         return false;
      }
      
      private function §-t§(param1:MouseEvent) : void
      {
         dispatchEvent(new §;6§(§;6§.§2!"§,this.data,true));
      }
      
      protected function get §,!]§() : Boolean
      {
         return this.data.userId == (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
      }
      
      protected function §8""§() : void
      {
         if(this.§?"C§ && this.§?"C§.parent == this && this.§?"C§ == §+!H§[this.data.userId])
         {
            return;
         }
         if(this.§?"C§ && this.§?"C§.parent == this)
         {
            removeChild(this.§?"C§);
            this.§?"C§ = null;
         }
         if(§+!H§[this.data.userId])
         {
            addChild(this.§?"C§ = §+!H§[this.data.userId]);
         }
         else
         {
            this.§?"C§ = new §2!!§(this.data.userId,this.data.avatarString,false);
            this.§?"C§.x = 5;
            this.§?"C§.y = 5;
            §+!H§[this.data.userId] = this.§?"C§;
            addChild(this.§?"C§);
         }
      }
   }
}
