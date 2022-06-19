package §<m§
{
   import § !§.§?N§;
   import §,"-§.§2!P§;
   import §1o§.§,!c§;
   import §2!,§.§!"§;
   import §2!,§.§=n§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §"b§ extends Sprite
   {
      
      public static var § "<§:Object = {};
       
      
      protected var § 9§:§=n§;
      
      protected var §^!^§:§,!c§;
      
      protected var §@M§:§"!2§;
      
      public function §"b§()
      {
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
      }
      
      public function set data(param1:§=n§) : void
      {
         this.§ 9§ = param1;
         this.update();
      }
      
      public function get data() : §=n§
      {
         return this.§ 9§;
      }
      
      public function update() : void
      {
      }
      
      protected function §>@§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§@M§ == null)
         {
            _loc1_ = this.§["3§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.§<S§)
         {
            if(this.contains(this.§@M§.§!!C§))
            {
               removeChild(this.§@M§.§!!C§);
               this.§@M§ = null;
               return;
            }
         }
         if(this is §]<§)
         {
            §]<§(this).setCanSendGift(§!"§.§8c§.§5!j§(this.data.userId),false);
         }
         setChildIndex(this.§@M§.§!!C§,numChildren - 1);
         this.§@M§.§9B§.addEventListener(MouseEvent.CLICK,this.§0+§,false,0,true);
      }
      
      protected function §["3§() : Boolean
      {
         if(!this.§<S§)
         {
            this.§@M§ = new §"!2§();
            addChild(this.§@M§.§!!C§);
            return true;
         }
         return false;
      }
      
      private function §0+§(param1:MouseEvent) : void
      {
         dispatchEvent(new §?N§(§?N§.§>!5§,this.data,true));
      }
      
      protected function get §<S§() : Boolean
      {
         return this.data.userId == (AngryBirdsFP11.sUserProgress as §2!P§).§!!'§;
      }
      
      protected function §>v§() : void
      {
         if(this.§^!^§ && this.§^!^§.parent == this && this.§^!^§ == § "<§[this.data.userId])
         {
            return;
         }
         if(this.§^!^§ && this.§^!^§.parent == this)
         {
            removeChild(this.§^!^§);
            this.§^!^§ = null;
         }
         if(§ "<§[this.data.userId])
         {
            addChild(this.§^!^§ = § "<§[this.data.userId]);
         }
         else
         {
            this.§^!^§ = new §,!c§(this.data.userId,this.data.avatarString,false);
            this.§^!^§.x = 5;
            this.§^!^§.y = 5;
            § "<§[this.data.userId] = this.§^!^§;
            addChild(this.§^!^§);
         }
      }
   }
}
