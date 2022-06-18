package §"!E§
{
   import §->§.Sprite;
   
   public class §[!-§
   {
       
      
      private var §,R§:Vector.<§9!E§>;
      
      private var §36§:Sprite;
      
      public function §[!-§()
      {
         this.§,R§ = new Vector.<§9!E§>();
         this.§36§ = new Sprite();
         super();
         this.§36§.§'!D§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§36§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9!E§ = null;
         while(this.§,R§.length)
         {
            _loc1_ = this.§,R§.pop();
            _loc1_.dispose();
         }
         this.§36§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§9!E§ = null;
         while(this.§,R§.length)
         {
            _loc1_ = this.§,R§.pop();
            this.§36§.removeChild(_loc1_.§[M§);
            _loc1_.dispose();
         }
         this.§36§.§&1§();
      }
      
      public function §#!&§(param1:§9!E§) : void
      {
         this.§,R§.push(param1);
         this.§36§.addChild(param1.§[M§);
      }
      
      public function §"+§(param1:§9!E§) : void
      {
         var _loc3_:§9!E§ = null;
         var _loc2_:int = this.§,R§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§,R§[_loc2_];
            this.§36§.removeChild(_loc3_.§[M§);
            _loc3_.dispose();
            this.§,R§.splice(_loc2_,1);
         }
      }
      
      public function § !2§(param1:§[!-§) : void
      {
         var _loc2_:§9!E§ = null;
         while(this.§,R§.length)
         {
            _loc2_ = this.§,R§.pop();
            this.§36§.removeChild(_loc2_.§[M§);
            param1.§#!&§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§9!E§ = null;
         var _loc2_:int = this.§,R§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,R§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§36§.removeChild(_loc3_.§[M§);
               _loc3_.dispose();
               this.§,R§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §1!5§(param1:Number, param2:Number) : void
      {
         this.§36§.x = -param1;
         this.§36§.y = -param2;
      }
   }
}
