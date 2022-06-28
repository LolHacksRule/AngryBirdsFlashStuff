package §?t§
{
   import §,_§.Sprite;
   
   public class §1v§
   {
       
      
      private var §?j§:Vector.<§,i§>;
      
      private var §46§:Sprite;
      
      public function §1v§()
      {
         this.§?j§ = new Vector.<§,i§>();
         this.§46§ = new Sprite();
         super();
         this.§46§.§!!%§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§46§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,i§ = null;
         while(this.§?j§.length)
         {
            _loc1_ = this.§?j§.pop();
            _loc1_.dispose();
         }
         this.§46§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§,i§ = null;
         while(this.§?j§.length)
         {
            _loc1_ = this.§?j§.pop();
            this.§46§.removeChild(_loc1_.§?l§);
            _loc1_.dispose();
         }
         this.§46§.§6L§();
      }
      
      public function §8"§(param1:§,i§) : void
      {
         this.§?j§.push(param1);
         this.§46§.addChild(param1.§?l§);
      }
      
      public function §0M§(param1:§,i§) : void
      {
         var _loc3_:§,i§ = null;
         var _loc2_:int = this.§?j§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§?j§[_loc2_];
            this.§46§.removeChild(_loc3_.§?l§);
            _loc3_.dispose();
            this.§?j§.splice(_loc2_,1);
         }
      }
      
      public function §3"§(param1:§1v§) : void
      {
         var _loc2_:§,i§ = null;
         while(this.§?j§.length)
         {
            _loc2_ = this.§?j§.pop();
            this.§46§.removeChild(_loc2_.§?l§);
            param1.§8"§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§,i§ = null;
         var _loc2_:int = this.§?j§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§?j§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§46§.removeChild(_loc3_.§?l§);
               _loc3_.dispose();
               this.§?j§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §;!A§(param1:Number, param2:Number) : void
      {
         this.§46§.x = -param1;
         this.§46§.y = -param2;
      }
   }
}
