package §"§
{
   import §#!f§.Sprite;
   
   public class §9!5§
   {
       
      
      private var §>n§:Vector.<§2z§>;
      
      private var § !2§:Sprite;
      
      public function §9!5§()
      {
         this.§>n§ = new Vector.<§2z§>();
         this.§ !2§ = new Sprite();
         super();
         this.§ !2§.§4!W§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§ !2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2z§ = null;
         while(this.§>n§.length)
         {
            _loc1_ = this.§>n§.pop();
            _loc1_.dispose();
         }
         this.§ !2§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§2z§ = null;
         while(this.§>n§.length)
         {
            _loc1_ = this.§>n§.pop();
            this.§ !2§.removeChild(_loc1_.§%2§);
            _loc1_.dispose();
         }
         this.§ !2§.§each §();
      }
      
      public function addParticle(param1:§2z§) : void
      {
         this.§>n§.push(param1);
         this.§ !2§.addChild(param1.§%2§);
      }
      
      public function §8n§(param1:§2z§) : void
      {
         var _loc3_:§2z§ = null;
         var _loc2_:int = this.§>n§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§>n§[_loc2_];
            this.§ !2§.removeChild(_loc3_.§%2§);
            _loc3_.dispose();
            this.§>n§.splice(_loc2_,1);
         }
      }
      
      public function §1!,§(param1:§9!5§) : void
      {
         var _loc2_:§2z§ = null;
         while(this.§>n§.length)
         {
            _loc2_ = this.§>n§.pop();
            this.§ !2§.removeChild(_loc2_.§%2§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§2z§ = null;
         var _loc2_:int = this.§>n§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§>n§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§ !2§.removeChild(_loc3_.§%2§);
               _loc3_.dispose();
               this.§>n§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §7!E§(param1:Number, param2:Number) : void
      {
         this.§ !2§.x = -param1;
         this.§ !2§.y = -param2;
      }
   }
}
