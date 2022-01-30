package §?c§
{
   import §]!2§.Sprite;
   
   public class §&!`§
   {
       
      
      private var §9!Y§:Vector.<§3!u§>;
      
      private var §[+§:Sprite;
      
      public function §&!`§()
      {
         this.§9!Y§ = new Vector.<§3!u§>();
         this.§[+§ = new Sprite();
         super();
         this.§[+§.§7!'§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3!u§ = null;
         while(this.§9!Y§.length)
         {
            _loc1_ = this.§9!Y§.pop();
            _loc1_.dispose();
         }
         this.§[+§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§3!u§ = null;
         while(this.§9!Y§.length)
         {
            _loc1_ = this.§9!Y§.pop();
            this.§[+§.removeChild(_loc1_.§+,§);
            _loc1_.dispose();
         }
         this.§[+§.§^T§();
      }
      
      public function §=!J§(param1:§3!u§) : void
      {
         this.§9!Y§.push(param1);
         this.§[+§.addChild(param1.§+,§);
      }
      
      public function §^!j§(param1:§3!u§) : void
      {
         var _loc3_:§3!u§ = null;
         var _loc2_:int = this.§9!Y§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§9!Y§[_loc2_];
            this.§[+§.removeChild(_loc3_.§+,§);
            _loc3_.dispose();
            this.§9!Y§.splice(_loc2_,1);
         }
      }
      
      public function §1!v§(param1:§&!`§) : void
      {
         var _loc2_:§3!u§ = null;
         while(this.§9!Y§.length)
         {
            _loc2_ = this.§9!Y§.pop();
            this.§[+§.removeChild(_loc2_.§+,§);
            param1.§=!J§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§3!u§ = null;
         var _loc2_:int = this.§9!Y§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§9!Y§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§[+§.removeChild(_loc3_.§+,§);
               _loc3_.dispose();
               this.§9!Y§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §6!<§(param1:Number, param2:Number) : void
      {
         this.§[+§.x = -param1;
         this.§[+§.y = -param2;
      }
   }
}
