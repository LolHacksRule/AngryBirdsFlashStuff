package §`!r§
{
   import §!!U§.Sprite;
   
   public class §1$§
   {
       
      
      private var §`#[§:Vector.<§ U§>;
      
      private var §^c§:Sprite;
      
      public function §1$§()
      {
         this.§`#[§ = new Vector.<§ U§>();
         this.§^c§ = new Sprite();
         super();
         this.§^c§.§3'§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§^c§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ U§ = null;
         while(this.§`#[§.length)
         {
            _loc1_ = this.§`#[§.pop();
            _loc1_.dispose();
         }
         this.§^c§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§ U§ = null;
         while(this.§`#[§.length)
         {
            _loc1_ = this.§`#[§.pop();
            this.§^c§.removeChild(_loc1_.§[!8§);
            _loc1_.dispose();
         }
         this.§^c§.§1!h§();
      }
      
      public function §;!0§(param1:§ U§) : void
      {
         this.§`#[§.push(param1);
         this.§^c§.addChild(param1.§[!8§);
      }
      
      public function §`!q§(param1:§ U§) : void
      {
         var _loc3_:§ U§ = null;
         var _loc2_:int = this.§`#[§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§`#[§[_loc2_];
            this.§^c§.removeChild(_loc3_.§[!8§);
            _loc3_.dispose();
            this.§`#[§.splice(_loc2_,1);
         }
      }
      
      public function §^@§(param1:§1$§) : void
      {
         var _loc2_:§ U§ = null;
         while(this.§`#[§.length)
         {
            _loc2_ = this.§`#[§.pop();
            this.§^c§.removeChild(_loc2_.§[!8§);
            param1.§;!0§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§ U§ = null;
         var _loc2_:int = this.§`#[§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§`#[§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§^c§.removeChild(_loc3_.§[!8§);
               _loc3_.dispose();
               this.§`#[§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §>"Y§(param1:Number, param2:Number) : void
      {
         this.§^c§.x = -param1;
         this.§^c§.y = -param2;
      }
   }
}
