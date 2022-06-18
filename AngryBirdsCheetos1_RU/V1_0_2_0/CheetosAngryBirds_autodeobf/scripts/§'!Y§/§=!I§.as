package §'!Y§
{
   import §,H§.Sprite;
   
   public class §=!I§
   {
       
      
      private var §<!E§:Vector.<§+e§>;
      
      private var §>!3§:Sprite;
      
      public function §=!I§()
      {
         this.§<!E§ = new Vector.<§+e§>();
         this.§>!3§ = new Sprite();
         super();
         this.§>!3§.§09§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+e§ = null;
         while(this.§<!E§.length)
         {
            _loc1_ = this.§<!E§.pop();
            _loc1_.dispose();
         }
         this.§>!3§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§+e§ = null;
         while(this.§<!E§.length)
         {
            _loc1_ = this.§<!E§.pop();
            this.§>!3§.removeChild(_loc1_.§+![§);
            _loc1_.dispose();
         }
         this.§>!3§.§4!4§();
      }
      
      public function addParticle(param1:§+e§) : void
      {
         this.§<!E§.push(param1);
         this.§>!3§.addChild(param1.§+![§);
      }
      
      public function §=3§(param1:§+e§) : void
      {
         var _loc3_:§+e§ = null;
         var _loc2_:int = this.§<!E§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§<!E§[_loc2_];
            this.§>!3§.removeChild(_loc3_.§+![§);
            _loc3_.dispose();
            this.§<!E§.splice(_loc2_,1);
         }
      }
      
      public function §4d§(param1:§=!I§) : void
      {
         var _loc2_:§+e§ = null;
         while(this.§<!E§.length)
         {
            _loc2_ = this.§<!E§.pop();
            this.§>!3§.removeChild(_loc2_.§+![§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§+e§ = null;
         var _loc2_:int = this.§<!E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<!E§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§>!3§.removeChild(_loc3_.§+![§);
               _loc3_.dispose();
               this.§<!E§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §;7§(param1:Number, param2:Number) : void
      {
         this.§>!3§.x = -param1;
         this.§>!3§.y = -param2;
      }
   }
}
