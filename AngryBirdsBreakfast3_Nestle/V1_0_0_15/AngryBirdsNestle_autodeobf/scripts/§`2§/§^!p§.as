package §`2§
{
   import §3!J§.Sprite;
   
   public class §^!p§
   {
       
      
      private var §53§:Vector.<§`""§>;
      
      private var §29§:Sprite;
      
      public function §^!p§()
      {
         this.§53§ = new Vector.<§`""§>();
         this.§29§ = new Sprite();
         super();
         this.§29§.§6!U§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§29§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`""§ = null;
         while(this.§53§.length)
         {
            _loc1_ = this.§53§.pop();
            _loc1_.dispose();
         }
         this.§29§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§`""§ = null;
         while(this.§53§.length)
         {
            _loc1_ = this.§53§.pop();
            this.§29§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§29§.§<4§();
      }
      
      public function §9!@§(param1:§`""§) : void
      {
         this.§53§.push(param1);
         this.§29§.addChild(param1.displayObject);
      }
      
      public function §^"7§(param1:§`""§) : void
      {
         var _loc3_:§`""§ = null;
         var _loc2_:int = this.§53§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§53§[_loc2_];
            this.§29§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§53§.splice(_loc2_,1);
         }
      }
      
      public function §#""§(param1:§^!p§) : void
      {
         var _loc2_:§`""§ = null;
         while(this.§53§.length)
         {
            _loc2_ = this.§53§.pop();
            this.§29§.removeChild(_loc2_.displayObject);
            param1.§9!@§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§`""§ = null;
         var _loc2_:int = this.§53§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§53§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§29§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§53§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §5_§(param1:Number, param2:Number) : void
      {
         this.§29§.x = -param1;
         this.§29§.y = -param2;
      }
   }
}
