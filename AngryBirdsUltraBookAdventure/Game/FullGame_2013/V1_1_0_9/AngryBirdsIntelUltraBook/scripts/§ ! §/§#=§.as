package § ! §
{
   import §`g§.Sprite;
   
   public class §#=§
   {
       
      
      private var §[m§:Vector.<§>p§>;
      
      private var §>0§:Sprite;
      
      public function §#=§()
      {
         this.§[m§ = new Vector.<§>p§>();
         this.§>0§ = new Sprite();
         super();
         this.§>0§.§&!U§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§>0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc1_ = this.§[m§.pop();
            _loc1_.dispose();
         }
         this.§>0§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc1_ = this.§[m§.pop();
            this.§>0§.removeChild(_loc1_.§3!Q§);
            _loc1_.dispose();
         }
         this.§>0§.§;i§();
      }
      
      public function §-M§(param1:§>p§) : void
      {
         this.§[m§.push(param1);
         this.§>0§.addChild(param1.§3!Q§);
      }
      
      public function §^!%§(param1:§>p§) : void
      {
         var _loc3_:§>p§ = null;
         var _loc2_:int = this.§[m§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§[m§[_loc2_];
            this.§>0§.removeChild(_loc3_.§3!Q§);
            _loc3_.dispose();
            this.§[m§.splice(_loc2_,1);
         }
      }
      
      public function §<!j§(param1:§#=§) : void
      {
         var _loc2_:§>p§ = null;
         while(this.§[m§.length)
         {
            _loc2_ = this.§[m§.pop();
            this.§>0§.removeChild(_loc2_.§3!Q§);
            param1.§-M§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§>p§ = null;
         var _loc2_:int = this.§[m§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§[m§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§>0§.removeChild(_loc3_.§3!Q§);
               _loc3_.dispose();
               this.§[m§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §53§(param1:Number, param2:Number) : void
      {
         this.§>0§.x = -param1;
         this.§>0§.y = -param2;
      }
   }
}
