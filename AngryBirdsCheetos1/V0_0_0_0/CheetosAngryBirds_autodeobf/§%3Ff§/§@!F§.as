package §?f§
{
   import §`a§.Sprite;
   
   public class §@!F§
   {
       
      
      private var §8!B§:Vector.<§-&§>;
      
      private var §08§:Sprite;
      
      public function §@!F§()
      {
         this.§8!B§ = new Vector.<§-&§>();
         this.§08§ = new Sprite();
         super();
         this.§08§.§=!;§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§08§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§-&§ = null;
         while(this.§8!B§.length)
         {
            _loc1_ = this.§8!B§.pop();
            _loc1_.dispose();
         }
         this.§08§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§-&§ = null;
         while(this.§8!B§.length)
         {
            _loc1_ = this.§8!B§.pop();
            this.§08§.removeChild(_loc1_.§=M§);
            _loc1_.dispose();
         }
         this.§08§.§=b§();
      }
      
      public function addParticle(param1:§-&§) : void
      {
         this.§8!B§.push(param1);
         this.§08§.addChild(param1.§=M§);
      }
      
      public function §`]§(param1:§-&§) : void
      {
         var _loc3_:§-&§ = null;
         var _loc2_:int = this.§8!B§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§8!B§[_loc2_];
            this.§08§.removeChild(_loc3_.§=M§);
            _loc3_.dispose();
            this.§8!B§.splice(_loc2_,1);
         }
      }
      
      public function §[W§(param1:§@!F§) : void
      {
         var _loc2_:§-&§ = null;
         while(this.§8!B§.length)
         {
            _loc2_ = this.§8!B§.pop();
            this.§08§.removeChild(_loc2_.§=M§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§-&§ = null;
         var _loc2_:int = this.§8!B§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8!B§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§08§.removeChild(_loc3_.§=M§);
               _loc3_.dispose();
               this.§8!B§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §?!1§(param1:Number, param2:Number) : void
      {
         this.§08§.x = -param1;
         this.§08§.y = -param2;
      }
   }
}
