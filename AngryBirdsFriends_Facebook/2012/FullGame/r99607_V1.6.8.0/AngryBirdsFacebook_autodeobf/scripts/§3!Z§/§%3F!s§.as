package §3!Z§
{
   import §]&§.Sprite;
   
   public class §?!s§
   {
       
      
      private var §]c§:Vector.<§5!$§>;
      
      private var §="§:Sprite;
      
      public function §?!s§()
      {
         this.§]c§ = new Vector.<§5!$§>();
         this.§="§ = new Sprite();
         super();
         this.§="§.§3!5§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§="§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§5!$§ = null;
         while(this.§]c§.length)
         {
            _loc1_ = this.§]c§.pop();
            _loc1_.dispose();
         }
         this.§="§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§5!$§ = null;
         while(this.§]c§.length)
         {
            _loc1_ = this.§]c§.pop();
            this.§="§.removeChild(_loc1_.§3=§);
            _loc1_.dispose();
         }
         this.§="§.§1!Z§();
      }
      
      public function §&!J§(param1:§5!$§) : void
      {
         this.§]c§.push(param1);
         this.§="§.addChild(param1.§3=§);
      }
      
      public function §=^§(param1:§5!$§) : void
      {
         var _loc3_:§5!$§ = null;
         var _loc2_:int = this.§]c§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§]c§[_loc2_];
            this.§="§.removeChild(_loc3_.§3=§);
            _loc3_.dispose();
            this.§]c§.splice(_loc2_,1);
         }
      }
      
      public function §&d§(param1:§?!s§) : void
      {
         var _loc2_:§5!$§ = null;
         while(this.§]c§.length)
         {
            _loc2_ = this.§]c§.pop();
            this.§="§.removeChild(_loc2_.§3=§);
            param1.§&!J§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§5!$§ = null;
         var _loc2_:int = this.§]c§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§]c§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§="§.removeChild(_loc3_.§3=§);
               _loc3_.dispose();
               this.§]c§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §0!-§(param1:Number, param2:Number) : void
      {
         this.§="§.x = -param1;
         this.§="§.y = -param2;
      }
   }
}
