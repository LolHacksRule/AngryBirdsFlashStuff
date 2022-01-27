package §,7§
{
   import §'!&§.Sprite;
   
   public class §,"$§
   {
       
      
      private var §,S§:Vector.<§9!v§>;
      
      private var §&#§:Sprite;
      
      public function §,"$§()
      {
         this.§,S§ = new Vector.<§9!v§>();
         this.§&#§ = new Sprite();
         super();
         this.§&#§.§="E§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!v§ = null;
         while(this.§,S§.length)
         {
            _loc1_ = this.§,S§.pop();
            _loc1_.dispose();
         }
         this.§&#§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§9!v§ = null;
         while(this.§,S§.length)
         {
            _loc1_ = this.§,S§.pop();
            this.§&#§.removeChild(_loc1_.§&§);
            _loc1_.dispose();
         }
         this.§&#§.§!!4§();
      }
      
      public function §=J§(param1:§9!v§) : void
      {
         this.§,S§.push(param1);
         this.§&#§.addChild(param1.§&§);
      }
      
      public function §;f§(param1:§9!v§) : void
      {
         var _loc3_:§9!v§ = null;
         var _loc2_:int = this.§,S§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§,S§[_loc2_];
            this.§&#§.removeChild(_loc3_.§&§);
            _loc3_.dispose();
            this.§,S§.splice(_loc2_,1);
         }
      }
      
      public function §4!G§(param1:§,"$§) : void
      {
         var _loc2_:§9!v§ = null;
         while(this.§,S§.length)
         {
            _loc2_ = this.§,S§.pop();
            this.§&#§.removeChild(_loc2_.§&§);
            param1.§=J§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§9!v§ = null;
         var _loc2_:int = this.§,S§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,S§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§&#§.removeChild(_loc3_.§&§);
               _loc3_.dispose();
               this.§,S§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §#O§(param1:Number, param2:Number) : void
      {
         this.§&#§.x = -param1;
         this.§&#§.y = -param2;
      }
   }
}
