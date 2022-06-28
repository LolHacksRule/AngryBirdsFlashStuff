package §4@§
{
   import §&o§.Sprite;
   
   public class §7H§
   {
       
      
      private var §<^§:Vector.<§<!6§>;
      
      private var §?!@§:Sprite;
      
      public function §7H§()
      {
         this.§<^§ = new Vector.<§<!6§>();
         this.§?!@§ = new Sprite();
         super();
         this.§?!@§.§3!D§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!6§ = null;
         while(this.§<^§.length)
         {
            _loc1_ = this.§<^§.pop();
            _loc1_.dispose();
         }
         this.§?!@§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§<!6§ = null;
         while(this.§<^§.length)
         {
            _loc1_ = this.§<^§.pop();
            this.§?!@§.removeChild(_loc1_.§,_§);
            _loc1_.dispose();
         }
         this.§?!@§.§>,§();
      }
      
      public function §4#§(param1:§<!6§) : void
      {
         this.§<^§.push(param1);
         this.§?!@§.addChild(param1.§,_§);
      }
      
      public function §'C§(param1:§<!6§) : void
      {
         var _loc3_:§<!6§ = null;
         var _loc2_:int = this.§<^§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§<^§[_loc2_];
            this.§?!@§.removeChild(_loc3_.§,_§);
            _loc3_.dispose();
            this.§<^§.splice(_loc2_,1);
         }
      }
      
      public function §6Q§(param1:§7H§) : void
      {
         var _loc2_:§<!6§ = null;
         while(this.§<^§.length)
         {
            _loc2_ = this.§<^§.pop();
            this.§?!@§.removeChild(_loc2_.§,_§);
            param1.§4#§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§<!6§ = null;
         var _loc2_:int = this.§<^§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<^§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§?!@§.removeChild(_loc3_.§,_§);
               _loc3_.dispose();
               this.§<^§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §&4§(param1:Number, param2:Number) : void
      {
         this.§?!@§.x = -param1;
         this.§?!@§.y = -param2;
      }
   }
}
