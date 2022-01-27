package §!!k§
{
   import starling.events.Event;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §'#4§ extends Sprite
   {
       
      
      protected var §#!9§:§1!^§;
      
      protected var §;G§:Number = 0;
      
      protected var §]@§:int;
      
      protected var §'"g§:Number;
      
      protected var §^!u§:Number;
      
      protected var §2C§:int = -1;
      
      protected var §5!0§:DisplayObject;
      
      protected var §6"7§:Boolean;
      
      protected var §+"4§:Boolean = true;
      
      public function §'#4§(param1:§1!^§, param2:Boolean = false, param3:Number = 30)
      {
         super();
         this.§#!9§ = param1;
         this.§6"7§ = param2;
         this.§]@§ = param1.frameCount;
         this.§'"g§ = param3;
         this.§^!u§ = 1000 / param3;
         this.currentFrame = 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§+"4§)
         {
            return;
         }
         this.§;G§ += param1;
         var _loc2_:int = this.§;G§ / this.§^!u§;
         if(_loc2_ >= this.§]@§)
         {
            if(this.§6"7§)
            {
               this.§;G§ -= _loc2_ * this.§^!u§;
               _loc2_ -= this.§]@§;
            }
            else
            {
               this.§+"4§ = false;
            }
            dispatchEvent(new Event(Event.COMPLETE));
         }
         if(this.§2C§ != _loc2_)
         {
            this.currentFrame = _loc2_;
         }
      }
      
      public function set currentFrame(param1:int) : void
      {
         if(this.§2C§ == param1)
         {
            return;
         }
         this.§2C§ = param1;
         if(this.§5!0§)
         {
            removeChild(this.§5!0§,true);
         }
         this.§5!0§ = this.§#!9§.getFrame(this.§2C§);
         if(this.§5!0§)
         {
            addChild(this.§5!0§);
         }
      }
      
      public function get currentFrame() : int
      {
         return this.§2C§;
      }
      
      public function get totalFrames() : int
      {
         return this.§]@§;
      }
      
      public function get §["z§() : Boolean
      {
         return this.§+"4§;
      }
   }
}
