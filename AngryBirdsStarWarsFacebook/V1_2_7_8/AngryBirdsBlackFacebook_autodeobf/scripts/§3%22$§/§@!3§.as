package §3"$§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import starling.events.Event;
   
   public class §@!3§ extends Sprite
   {
       
      
      protected var §3-§:§[a§;
      
      protected var §,§:Number = 0;
      
      protected var §^!X§:int;
      
      protected var §""?§:Number;
      
      protected var §5!&§:Number;
      
      protected var §@!g§:int = -1;
      
      protected var §8#%§:DisplayObject;
      
      protected var §!"a§:Boolean;
      
      protected var §@"x§:Boolean = true;
      
      public function §@!3§(param1:§[a§, param2:Boolean = false, param3:Number = 30)
      {
         super();
         this.§3-§ = param1;
         this.§!"a§ = param2;
         this.§^!X§ = param1.frameCount;
         this.§""?§ = param3;
         this.§5!&§ = 1000 / param3;
         this.currentFrame = 0;
      }
      
      public function update(param1:Number) : void
      {
         if(!this.§@"x§)
         {
            return;
         }
         this.§,§ += param1;
         var _loc2_:int = this.§,§ / this.§5!&§;
         if(_loc2_ >= this.§^!X§)
         {
            if(this.§!"a§)
            {
               this.§,§ -= _loc2_ * this.§5!&§;
               _loc2_ -= this.§^!X§;
            }
            else
            {
               this.§@"x§ = false;
            }
            dispatchEvent(new Event(Event.COMPLETE));
         }
         if(this.§@!g§ != _loc2_)
         {
            this.currentFrame = _loc2_;
         }
      }
      
      public function set currentFrame(param1:int) : void
      {
         if(this.§@!g§ == param1)
         {
            return;
         }
         this.§@!g§ = param1;
         if(this.§8#%§)
         {
            removeChild(this.§8#%§,true);
         }
         this.§8#%§ = this.§3-§.getFrame(this.§@!g§);
         if(this.§8#%§)
         {
            addChild(this.§8#%§);
         }
      }
      
      public function get currentFrame() : int
      {
         return this.§@!g§;
      }
      
      public function get totalFrames() : int
      {
         return this.§^!X§;
      }
      
      public function get §^"h§() : Boolean
      {
         return this.§@"x§;
      }
   }
}
