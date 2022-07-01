package §#!4§
{
   import §,!q§.Sprite;
   
   public class §`!j§
   {
       
      
      private var §^9§:Vector.<§=f§>;
      
      private var §[!<§:Sprite;
      
      public function §`!j§()
      {
         this.§^9§ = new Vector.<§=f§>();
         this.§[!<§ = new Sprite();
         super();
         this.§[!<§.§ w§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[!<§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=f§ = null;
         while(this.§^9§.length)
         {
            _loc1_ = this.§^9§.pop();
            _loc1_.dispose();
         }
         this.§[!<§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§=f§ = null;
         while(this.§^9§.length)
         {
            _loc1_ = this.§^9§.pop();
            this.§[!<§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§[!<§.§'x§();
      }
      
      public function §6!=§(param1:§=f§) : void
      {
         this.§^9§.push(param1);
         this.§[!<§.addChild(param1.displayObject);
      }
      
      public function §>!]§(param1:§=f§) : void
      {
         var _loc3_:§=f§ = null;
         var _loc2_:int = this.§^9§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§^9§[_loc2_];
            this.§[!<§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§^9§.splice(_loc2_,1);
         }
      }
      
      public function §9! §(param1:§`!j§) : void
      {
         var _loc2_:§=f§ = null;
         while(this.§^9§.length)
         {
            _loc2_ = this.§^9§.pop();
            this.§[!<§.removeChild(_loc2_.displayObject);
            param1.§6!=§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§=f§ = null;
         var _loc2_:int = this.§^9§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§^9§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§[!<§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§^9§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §set §(param1:Number, param2:Number) : void
      {
         this.§[!<§.x = -param1;
         this.§[!<§.y = -param2;
      }
   }
}
