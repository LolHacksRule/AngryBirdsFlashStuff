package §7"p§
{
   import §6#H§.Sprite;
   
   public class §[$1§
   {
       
      
      private var §^U§:Vector.<§6!9§>;
      
      private var §&!M§:Sprite;
      
      public function §[$1§()
      {
         this.§^U§ = new Vector.<§6!9§>();
         this.§&!M§ = new Sprite();
         super();
         this.§&!M§.§?#N§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&!M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!9§ = null;
         while(this.§^U§.length)
         {
            _loc1_ = this.§^U§.pop();
            _loc1_.dispose();
         }
         this.§&!M§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§6!9§ = null;
         while(this.§^U§.length)
         {
            _loc1_ = this.§^U§.pop();
            this.§&!M§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§&!M§.§@"S§();
      }
      
      public function addParticle(param1:§6!9§) : void
      {
         this.§^U§.push(param1);
         this.§&!M§.addChild(param1.displayObject);
      }
      
      public function §5"%§(param1:§6!9§) : void
      {
         var _loc3_:§6!9§ = null;
         var _loc2_:int = this.§^U§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§^U§[_loc2_];
            this.§&!M§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§^U§.splice(_loc2_,1);
         }
      }
      
      public function §%!Y§(param1:§[$1§) : void
      {
         var _loc2_:§6!9§ = null;
         while(this.§^U§.length)
         {
            _loc2_ = this.§^U§.pop();
            this.§&!M§.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§6!9§ = null;
         var _loc2_:int = this.§^U§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§^U§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§&!M§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§^U§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §4O§(param1:Number, param2:Number) : void
      {
         this.§&!M§.x = -param1;
         this.§&!M§.y = -param2;
      }
   }
}
