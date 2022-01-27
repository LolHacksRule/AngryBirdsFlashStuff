package §1"?§
{
   import §&!]§.Sprite;
   
   public class §6"?§
   {
       
      
      private var §6!E§:Vector.<§4R§>;
      
      private var §3!a§:Sprite;
      
      public function §6"?§()
      {
         this.§6!E§ = new Vector.<§4R§>();
         this.§3!a§ = new Sprite();
         super();
         this.§3!a§.§="C§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3!a§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4R§ = null;
         while(this.§6!E§.length)
         {
            _loc1_ = this.§6!E§.pop();
            _loc1_.dispose();
         }
         this.§3!a§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§4R§ = null;
         while(this.§6!E§.length)
         {
            _loc1_ = this.§6!E§.pop();
            this.§3!a§.removeChild(_loc1_.§'!+§);
            _loc1_.dispose();
         }
         this.§3!a§.§1V§();
      }
      
      public function §'"-§(param1:§4R§) : void
      {
         this.§6!E§.push(param1);
         this.§3!a§.addChild(param1.§'!+§);
      }
      
      public function §5!_§(param1:§4R§) : void
      {
         var _loc3_:§4R§ = null;
         var _loc2_:int = this.§6!E§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§6!E§[_loc2_];
            this.§3!a§.removeChild(_loc3_.§'!+§);
            _loc3_.dispose();
            this.§6!E§.splice(_loc2_,1);
         }
      }
      
      public function §5!K§(param1:§6"?§) : void
      {
         var _loc2_:§4R§ = null;
         while(this.§6!E§.length)
         {
            _loc2_ = this.§6!E§.pop();
            this.§3!a§.removeChild(_loc2_.§'!+§);
            param1.§'"-§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§4R§ = null;
         var _loc2_:int = this.§6!E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§6!E§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§3!a§.removeChild(_loc3_.§'!+§);
               _loc3_.dispose();
               this.§6!E§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §&!>§(param1:Number, param2:Number) : void
      {
         this.§3!a§.x = -param1;
         this.§3!a§.y = -param2;
      }
   }
}
