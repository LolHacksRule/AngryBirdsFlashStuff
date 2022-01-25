package §@!>§
{
   import §;t§.Sprite;
   
   public class §4l§
   {
       
      
      private var §-,§:Vector.<§<!J§>;
      
      private var §3=§:Sprite;
      
      public function §4l§()
      {
         this.§-,§ = new Vector.<§<!J§>();
         this.§3=§ = new Sprite();
         super();
         this.§3=§.§]U§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§3=§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!J§ = null;
         while(this.§-,§.length)
         {
            _loc1_ = this.§-,§.pop();
            _loc1_.dispose();
         }
         this.§3=§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§<!J§ = null;
         while(this.§-,§.length)
         {
            _loc1_ = this.§-,§.pop();
            this.§3=§.removeChild(_loc1_.§=o§);
            _loc1_.dispose();
         }
         this.§3=§.§-!;§();
      }
      
      public function §'!"§(param1:§<!J§) : void
      {
         this.§-,§.push(param1);
         this.§3=§.addChild(param1.§=o§);
      }
      
      public function §!z§(param1:§<!J§) : void
      {
         var _loc3_:§<!J§ = null;
         var _loc2_:int = this.§-,§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§-,§[_loc2_];
            this.§3=§.removeChild(_loc3_.§=o§);
            _loc3_.dispose();
            this.§-,§.splice(_loc2_,1);
         }
      }
      
      public function §6!V§(param1:§4l§) : void
      {
         var _loc2_:§<!J§ = null;
         while(this.§-,§.length)
         {
            _loc2_ = this.§-,§.pop();
            this.§3=§.removeChild(_loc2_.§=o§);
            param1.§'!"§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§<!J§ = null;
         var _loc2_:int = this.§-,§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-,§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§3=§.removeChild(_loc3_.§=o§);
               _loc3_.dispose();
               this.§-,§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §!Y§(param1:Number, param2:Number) : void
      {
         this.§3=§.x = -param1;
         this.§3=§.y = -param2;
      }
   }
}
