package §&E§
{
   import §'!6§.Sprite;
   
   public class § @§
   {
       
      
      private var §["V§:Vector.<§0i§>;
      
      private var §>!=§:Sprite;
      
      public function § @§()
      {
         this.§["V§ = new Vector.<§0i§>();
         this.§>!=§ = new Sprite();
         super();
         this.§>!=§.§^]§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>!=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0i§ = null;
         while(this.§["V§.length)
         {
            _loc1_ = this.§["V§.pop();
            _loc1_.dispose();
         }
         this.§>!=§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§0i§ = null;
         while(this.§["V§.length)
         {
            _loc1_ = this.§["V§.pop();
            this.§>!=§.removeChild(_loc1_.§>R§);
            _loc1_.dispose();
         }
         this.§>!=§.§!!>§();
      }
      
      public function §"!J§(param1:§0i§) : void
      {
         this.§["V§.push(param1);
         this.§>!=§.addChild(param1.§>R§);
      }
      
      public function §"!]§(param1:§0i§) : void
      {
         var _loc3_:§0i§ = null;
         var _loc2_:int = this.§["V§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§["V§[_loc2_];
            this.§>!=§.removeChild(_loc3_.§>R§);
            _loc3_.dispose();
            this.§["V§.splice(_loc2_,1);
         }
      }
      
      public function §#!4§(param1:§ @§) : void
      {
         var _loc2_:§0i§ = null;
         while(this.§["V§.length)
         {
            _loc2_ = this.§["V§.pop();
            this.§>!=§.removeChild(_loc2_.§>R§);
            param1.§"!J§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§0i§ = null;
         var _loc2_:int = this.§["V§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§["V§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§>!=§.removeChild(_loc3_.§>R§);
               _loc3_.dispose();
               this.§["V§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §^§(param1:Number, param2:Number) : void
      {
         this.§>!=§.x = -param1;
         this.§>!=§.y = -param2;
      }
   }
}
