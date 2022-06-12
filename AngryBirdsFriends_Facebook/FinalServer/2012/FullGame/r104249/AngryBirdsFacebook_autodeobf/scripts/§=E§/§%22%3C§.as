package §=E§
{
   import §-n§.§!h§;
   import §6! §.§<"#§;
   import §<";§.§'y§;
   import §^!U§.§2!M§;
   import §^!U§.§7@§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §"<§ extends Sprite
   {
      
      public static var §0!M§:Object = {};
       
      
      protected var §=]§:§2!M§;
      
      protected var §3">§:§<"#§;
      
      protected var §;!K§:§?!f§;
      
      public function §"<§()
      {
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
      }
      
      public function set data(param1:§2!M§) : void
      {
         this.§=]§ = param1;
         this.update();
      }
      
      public function get data() : §2!M§
      {
         return this.§=]§;
      }
      
      public function update() : void
      {
      }
      
      protected function §%!h§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§;!K§ == null)
         {
            _loc1_ = this.§1!%§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.§4R§)
         {
            if(this.contains(this.§;!K§.§=!8§))
            {
               removeChild(this.§;!K§.§=!8§);
               this.§;!K§ = null;
               return;
            }
         }
         if(this is §[K§)
         {
            §[K§(this).setCanSendGift(§7@§.§1[§.§0q§(this.data.userId),false);
         }
         setChildIndex(this.§;!K§.§=!8§,numChildren - 1);
         this.§;!K§.§`!k§.addEventListener(MouseEvent.CLICK,this.§ E§,false,0,true);
      }
      
      protected function §1!%§() : Boolean
      {
         if(!this.§4R§)
         {
            this.§;!K§ = new §?!f§();
            addChild(this.§;!K§.§=!8§);
            return true;
         }
         return false;
      }
      
      private function § E§(param1:MouseEvent) : void
      {
         dispatchEvent(new §!h§(§!h§.§ H§,this.data,true));
      }
      
      protected function get §4R§() : Boolean
      {
         return this.data.userId == (AngryBirdsFP11.sUserProgress as §'y§).§;#§;
      }
      
      protected function §^9§() : void
      {
         if(this.§3">§ && this.§3">§.parent == this && this.§3">§ == §0!M§[this.data.userId])
         {
            return;
         }
         if(this.§3">§ && this.§3">§.parent == this)
         {
            removeChild(this.§3">§);
            this.§3">§ = null;
         }
         if(§0!M§[this.data.userId])
         {
            addChild(this.§3">§ = §0!M§[this.data.userId]);
         }
         else
         {
            this.§3">§ = new §<"#§(this.data.userId,this.data.avatarString,false);
            this.§3">§.x = 5;
            this.§3">§.y = 5;
            §0!M§[this.data.userId] = this.§3">§;
            addChild(this.§3">§);
         }
      }
   }
}
