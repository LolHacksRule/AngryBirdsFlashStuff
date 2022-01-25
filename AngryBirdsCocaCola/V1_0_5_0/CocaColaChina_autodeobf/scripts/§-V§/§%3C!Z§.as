package §-V§
{
   import §<!$§.Sprite;
   
   public class §<!Z§
   {
       
      
      private var §!j§:Vector.<§&!^§>;
      
      private var §&!'§:Sprite;
      
      public function §<!Z§()
      {
         this.§!j§ = new Vector.<§&!^§>();
         this.§&!'§ = new Sprite();
         super();
         this.§&!'§.§2!-§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&!'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&!^§ = null;
         while(this.§!j§.length)
         {
            _loc1_ = this.§!j§.pop();
            _loc1_.dispose();
         }
         this.§&!'§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§&!^§ = null;
         while(this.§!j§.length)
         {
            _loc1_ = this.§!j§.pop();
            this.§&!'§.removeChild(_loc1_.§5!4§);
            _loc1_.dispose();
         }
         this.§&!'§.§>r§();
      }
      
      public function §;!V§(param1:§&!^§) : void
      {
         this.§!j§.push(param1);
         this.§&!'§.addChild(param1.§5!4§);
      }
      
      public function §6!K§(param1:§&!^§) : void
      {
         var _loc3_:§&!^§ = null;
         var _loc2_:int = this.§!j§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§!j§[_loc2_];
            this.§&!'§.removeChild(_loc3_.§5!4§);
            _loc3_.dispose();
            this.§!j§.splice(_loc2_,1);
         }
      }
      
      public function §2]§(param1:§<!Z§) : void
      {
         var _loc2_:§&!^§ = null;
         while(this.§!j§.length)
         {
            _loc2_ = this.§!j§.pop();
            this.§&!'§.removeChild(_loc2_.§5!4§);
            param1.§;!V§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§&!^§ = null;
         var _loc2_:int = this.§!j§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§!j§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§&!'§.removeChild(_loc3_.§5!4§);
               _loc3_.dispose();
               this.§!j§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §5b§(param1:Number, param2:Number) : void
      {
         this.§&!'§.x = -param1;
         this.§&!'§.y = -param2;
      }
   }
}
