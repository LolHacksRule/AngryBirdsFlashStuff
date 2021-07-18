package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §<T§.§4!N§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §1!"§ extends EventDispatcher
   {
       
      
      private var §%M§:Boolean;
      
      private var §4",§:§4!N§;
      
      private var §<!^§:§ "E§;
      
      private var §8!2§:Sprite;
      
      private var §'M§:int;
      
      private var §;z§:Number;
      
      private var §?E§:Number;
      
      private var §?!W§:Number;
      
      private var §3"%§:Number;
      
      private var §7!N§:Boolean;
      
      private var §53§:Boolean;
      
      private var §!"U§:Number;
      
      private var § !O§:Boolean = false;
      
      public function §1!"§(param1:String, param2:Sprite, param3:§'!S§, param4:Number, param5:Number, param6:Number, param7:Boolean = false, param8:Number = 0)
      {
         super();
         this.§4",§ = param3.animationManager.getAnimation(param1);
         this.§8!2§ = param2;
         this.setPosition(param4,param5);
         this.§?E§ = param6;
         this.§7!N§ = param7;
         this.§!"U§ = param8;
         this.reset();
      }
      
      public function update(param1:Number) : Boolean
      {
         if(this.§!"U§ > 0)
         {
            this.§!"U§ -= param1;
            return true;
         }
         if(this.§%M§)
         {
            if(this.§;z§ == 0 && !this.§ !O§)
            {
               this.§ !O§ = true;
               this.§5p§();
            }
            this.§;z§ += param1;
            if(this.§;z§ > this.§?E§)
            {
               this.§;z§ = 0;
               ++this.§'M§;
               this.§8!2§.removeChild(this.§<!^§);
               if(this.§7!N§ && this.§'M§ == this.§4",§.getFrameCount())
               {
                  this.§'M§ = 0;
               }
               if(this.§'M§ == this.§4",§.getFrameCount())
               {
                  this.§%M§ = false;
                  this.§0!k§();
               }
               else
               {
                  this.§<!^§ = new § "E§(this.§4",§.getFrame(this.§'M§).texture);
                  this.§8!2§.addChild(this.§<!^§);
                  this.§<!^§.x = this.§?!W§ - this.§<!^§.width / 2;
                  this.§<!^§.y = this.§3"%§ - (!!this.§53§ ? this.§<!^§.height / 2 : this.§<!^§.height);
               }
            }
         }
         return this.§%M§;
      }
      
      public function reset() : void
      {
         this.§'M§ = 0;
         this.§;z§ = 0;
         this.§%M§ = true;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         this.§?!W§ = param1;
         this.§3"%§ = param2;
      }
      
      public function §%"-§(param1:Boolean) : void
      {
         this.§53§ = param1;
      }
      
      public function §5p§() : void
      {
         dispatchEvent(new Event(Event.ACTIVATE));
      }
      
      public function §0!k§() : void
      {
         dispatchEvent(new Event(Event.COMPLETE));
      }
   }
}
