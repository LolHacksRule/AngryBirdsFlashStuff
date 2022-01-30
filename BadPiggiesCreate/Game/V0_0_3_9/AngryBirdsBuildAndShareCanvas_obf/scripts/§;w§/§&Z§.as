package §;w§
{
   import §7q§.Sprite;
   
   public class §&Z§
   {
       
      
      private var §9_§:Vector.<§3"+§>;
      
      private var §?=§:Sprite;
      
      public function §&Z§()
      {
         this.§9_§ = new Vector.<§3"+§>();
         this.§?=§ = new Sprite();
         super();
         this.§?=§.§7!&§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§?=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3"+§ = null;
         while(this.§9_§.length)
         {
            _loc1_ = this.§9_§.pop();
            _loc1_.dispose();
         }
         this.§?=§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§3"+§ = null;
         while(this.§9_§.length)
         {
            _loc1_ = this.§9_§.pop();
            this.§?=§.removeChild(_loc1_.§@i§);
            _loc1_.dispose();
         }
         this.§?=§.§^!5§();
      }
      
      public function §continue§(param1:§3"+§) : void
      {
         this.§9_§.push(param1);
         this.§?=§.addChild(param1.§@i§);
      }
      
      public function §>!@§(param1:§3"+§) : void
      {
         var _loc3_:§3"+§ = null;
         var _loc2_:int = this.§9_§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§9_§[_loc2_];
            this.§?=§.removeChild(_loc3_.§@i§);
            _loc3_.dispose();
            this.§9_§.splice(_loc2_,1);
         }
      }
      
      public function §2!B§(param1:§&Z§) : void
      {
         var _loc2_:§3"+§ = null;
         while(this.§9_§.length)
         {
            _loc2_ = this.§9_§.pop();
            this.§?=§.removeChild(_loc2_.§@i§);
            param1.§continue§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§3"+§ = null;
         var _loc2_:int = this.§9_§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9_§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§?=§.removeChild(_loc3_.§@i§);
               _loc3_.dispose();
               this.§9_§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §<",§(param1:Number, param2:Number) : void
      {
         this.§?=§.x = -param1;
         this.§?=§.y = -param2;
      }
   }
}
