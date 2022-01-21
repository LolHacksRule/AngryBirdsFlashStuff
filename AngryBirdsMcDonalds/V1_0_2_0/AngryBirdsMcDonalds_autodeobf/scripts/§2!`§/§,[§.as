package §2!`§
{
   import §5x§.Sprite;
   
   public class §,[§
   {
       
      
      private var §<!d§:Vector.<§8!;§>;
      
      private var §<O§:Sprite;
      
      public function §,[§()
      {
         this.§<!d§ = new Vector.<§8!;§>();
         this.§<O§ = new Sprite();
         super();
         this.§<O§.§^!7§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§<O§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8!;§ = null;
         while(this.§<!d§.length)
         {
            _loc1_ = this.§<!d§.pop();
            _loc1_.dispose();
         }
         this.§<O§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§8!;§ = null;
         while(this.§<!d§.length)
         {
            _loc1_ = this.§<!d§.pop();
            this.§<O§.removeChild(_loc1_.§&!b§);
            _loc1_.dispose();
         }
         this.§<O§.§5!3§();
      }
      
      public function §;!G§(param1:§8!;§) : void
      {
         this.§<!d§.push(param1);
         this.§<O§.addChild(param1.§&!b§);
      }
      
      public function §!!O§(param1:§8!;§) : void
      {
         var _loc3_:§8!;§ = null;
         var _loc2_:int = this.§<!d§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§<!d§[_loc2_];
            this.§<O§.removeChild(_loc3_.§&!b§);
            _loc3_.dispose();
            this.§<!d§.splice(_loc2_,1);
         }
      }
      
      public function §+#§(param1:§,[§) : void
      {
         var _loc2_:§8!;§ = null;
         while(this.§<!d§.length)
         {
            _loc2_ = this.§<!d§.pop();
            this.§<O§.removeChild(_loc2_.§&!b§);
            param1.§;!G§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§8!;§ = null;
         var _loc2_:int = this.§<!d§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§<!d§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§<O§.removeChild(_loc3_.§&!b§);
               _loc3_.dispose();
               this.§<!d§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §;7§(param1:Number, param2:Number) : void
      {
         this.§<O§.x = -param1;
         this.§<O§.y = -param2;
      }
   }
}
