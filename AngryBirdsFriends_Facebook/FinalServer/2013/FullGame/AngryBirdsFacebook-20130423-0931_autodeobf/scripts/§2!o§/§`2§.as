package §2!o§
{
   import § "!§.§ ! §;
   import § "!§.§9"&§;
   import §,l§.§#!>§;
   import §,l§.§4"7§;
   import §;!d§.§6"L§;
   import §@!%§.§#!$§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §`2§ extends Sprite
   {
      
      public static var §+j§:Object = {};
       
      
      protected var §+]§:§#!>§;
      
      protected var § !L§:§ ! §;
      
      protected var §#"2§:§4K§;
      
      protected var §^Y§:§4n§;
      
      public function §`2§()
      {
         super();
         rotation = -90;
         y = 180;
         cacheAsBitmap = true;
      }
      
      public function set data(param1:§#!>§) : void
      {
         this.§+]§ = param1;
         this.update();
      }
      
      public function get data() : §#!>§
      {
         return this.§+]§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §4"L§() : Boolean
      {
         if(this.data.userId == §9"&§.§-"W§ || this.data.userId == §9"&§.§#2§)
         {
            return true;
         }
         return false;
      }
      
      protected function §=!8§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§#"2§ == null)
         {
            _loc1_ = this.§5!W§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.§]F§)
         {
            if(this.contains(this.§#"2§.§<!6§))
            {
               removeChild(this.§#"2§.§<!6§);
               this.§#"2§ = null;
               return;
            }
         }
         if(this is §0!o§)
         {
            §0!o§(this).setCanSendGift(§4"7§.§&"5§.§[>§(this.data.userId),false);
         }
         setChildIndex(this.§#"2§.§<!6§,numChildren - 1);
         this.§#"2§.§[8§.addEventListener(MouseEvent.CLICK,this.§0A§,false,0,true);
      }
      
      protected function §1l§() : void
      {
         var _loc1_:Boolean = false;
         if(this.§^Y§ == null)
         {
            _loc1_ = this.§58§();
            if(!_loc1_)
            {
               return;
            }
         }
         if(this.§]F§ || !this.§4"L§)
         {
            if(this.contains(this.§^Y§.§<!6§))
            {
               removeChild(this.§^Y§.§<!6§);
               this.§^Y§ = null;
               return;
            }
         }
         setChildIndex(this.§^Y§.§<!6§,numChildren - 1);
      }
      
      protected function §58§() : Boolean
      {
         if(!this.§]F§ && this.§4"L§)
         {
            this.§^Y§ = new §4n§();
            addChild(this.§^Y§.§<!6§);
            return true;
         }
         return false;
      }
      
      protected function §5!W§() : Boolean
      {
         if(!this.§]F§)
         {
            this.§#"2§ = new §4K§();
            addChild(this.§#"2§.§<!6§);
            return true;
         }
         return false;
      }
      
      private function §0A§(param1:MouseEvent) : void
      {
         dispatchEvent(new §6"L§(§6"L§.§&!'§,this.data,true));
      }
      
      protected function get §]F§() : Boolean
      {
         return this.data.userId == (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
      }
      
      protected function §2!l§() : void
      {
         if(this.§ !L§ && this.§ !L§.parent == this && this.§ !L§ == §+j§[this.data.userId])
         {
            return;
         }
         if(this.§ !L§ && this.§ !L§.parent == this)
         {
            removeChild(this.§ !L§);
            this.§ !L§ = null;
         }
         if(§+j§[this.data.userId])
         {
            addChild(this.§ !L§ = §+j§[this.data.userId]);
         }
         else
         {
            this.§ !L§ = new § ! §(this.data.userId,this.data.avatarString,false);
            this.§ !L§.x = 5;
            this.§ !L§.y = 5;
            §+j§[this.data.userId] = this.§ !L§;
            addChild(this.§ !L§);
         }
      }
   }
}
