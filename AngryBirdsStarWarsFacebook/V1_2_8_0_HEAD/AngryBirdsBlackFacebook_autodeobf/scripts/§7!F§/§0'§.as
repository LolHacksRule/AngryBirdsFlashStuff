package §7!F§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import starling.events.Event;
   
   public class §0'§ extends Sprite
   {
       
      
      protected var §]!`§:§>"G§;
      
      protected var §'!<§:Number = 0;
      
      protected var § H§:int;
      
      protected var §6#F§:Number;
      
      protected var §?"[§:Number;
      
      protected var §?"l§:int = -1;
      
      protected var §>#;§:DisplayObject;
      
      protected var §#S§:Boolean;
      
      protected var §&#6§:Boolean = true;
      
      public function §0'§(param1:§>"G§, param2:Boolean = false, param3:Number = 30)
      {
         super();
         this.§]!`§ = param1;
         this.§#S§ = param2;
         this.§ H§ = param1.frameCount;
         this.§6#F§ = param3;
         this.§?"[§ = 1000 / param3;
         this.currentFrame = 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§&#6§)
         {
            return;
         }
         this.§'!<§ += param1;
         var _loc2_:int = this.§'!<§ / this.§?"[§;
         if(_loc2_ >= this.§ H§)
         {
            if(this.§#S§)
            {
               this.§'!<§ -= _loc2_ * this.§?"[§;
               _loc2_ -= this.§ H§;
            }
            else
            {
               this.§&#6§ = false;
            }
            dispatchEvent(new Event(Event.COMPLETE));
         }
         if(this.§?"l§ != _loc2_)
         {
            this.currentFrame = _loc2_;
         }
      }
      
      public function set currentFrame(param1:int) : void
      {
         if(this.§?"l§ == param1)
         {
            return;
         }
         this.§?"l§ = param1;
         if(this.§>#;§)
         {
            removeChild(this.§>#;§,true);
         }
         this.§>#;§ = this.§]!`§.getFrame(this.§?"l§);
         if(this.§>#;§)
         {
            addChild(this.§>#;§);
         }
      }
      
      public function get currentFrame() : int
      {
         return this.§?"l§;
      }
      
      public function get totalFrames() : int
      {
         return this.§ H§;
      }
      
      public function get §<"M§() : Boolean
      {
         return this.§&#6§;
      }
   }
}
