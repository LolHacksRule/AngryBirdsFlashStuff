package §>!Z§
{
   import §<!-§.Sprite;
   
   public class §=M§
   {
       
      
      private var §+!`§:Vector.<§+!Z§>;
      
      private var §+!@§:Sprite;
      
      public function §=M§()
      {
         this.§+!`§ = new Vector.<§+!Z§>();
         this.§+!@§ = new Sprite();
         super();
         this.§+!@§.§3S§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§+!Z§ = null;
         while(this.§+!`§.length)
         {
            _loc1_ = this.§+!`§.pop();
            _loc1_.dispose();
         }
         this.§+!@§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§+!Z§ = null;
         while(this.§+!`§.length)
         {
            _loc1_ = this.§+!`§.pop();
            this.§+!@§.removeChild(_loc1_.§;p§);
            _loc1_.dispose();
         }
         this.§+!@§.§5t§();
      }
      
      public function addParticle(param1:§+!Z§) : void
      {
         this.§+!`§.push(param1);
         this.§+!@§.addChild(param1.§;p§);
      }
      
      public function §4!5§(param1:§+!Z§) : void
      {
         var _loc3_:§+!Z§ = null;
         var _loc2_:int = this.§+!`§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§+!`§[_loc2_];
            this.§+!@§.removeChild(_loc3_.§;p§);
            _loc3_.dispose();
            this.§+!`§.splice(_loc2_,1);
         }
      }
      
      public function §^$§(param1:§=M§) : void
      {
         var _loc2_:§+!Z§ = null;
         while(this.§+!`§.length)
         {
            _loc2_ = this.§+!`§.pop();
            this.§+!@§.removeChild(_loc2_.§;p§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§+!Z§ = null;
         var _loc2_:int = this.§+!`§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+!`§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§+!@§.removeChild(_loc3_.§;p§);
               _loc3_.dispose();
               this.§+!`§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §!!6§(param1:Number, param2:Number) : void
      {
         this.§+!@§.x = -param1;
         this.§+!@§.y = -param2;
      }
   }
}
