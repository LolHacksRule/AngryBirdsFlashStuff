package §!D§
{
   import §#!@§.Sprite;
   
   public class §'J§
   {
       
      
      private var §8!M§:Vector.<§7D§>;
      
      private var §<q§:Sprite;
      
      public function §'J§()
      {
         this.§8!M§ = new Vector.<§7D§>();
         this.§<q§ = new Sprite();
         super();
         this.§<q§.§2@§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§<q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7D§ = null;
         while(this.§8!M§.length)
         {
            _loc1_ = this.§8!M§.pop();
            _loc1_.dispose();
         }
         this.§<q§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§7D§ = null;
         while(this.§8!M§.length)
         {
            _loc1_ = this.§8!M§.pop();
            this.§<q§.removeChild(_loc1_.§9!"§);
            _loc1_.dispose();
         }
         this.§<q§.§;v§();
      }
      
      public function §3S§(param1:§7D§) : void
      {
         this.§8!M§.push(param1);
         this.§<q§.addChild(param1.§9!"§);
      }
      
      public function §?!J§(param1:§7D§) : void
      {
         var _loc3_:§7D§ = null;
         var _loc2_:int = this.§8!M§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§8!M§[_loc2_];
            this.§<q§.removeChild(_loc3_.§9!"§);
            _loc3_.dispose();
            this.§8!M§.splice(_loc2_,1);
         }
      }
      
      public function §>w§(param1:§'J§) : void
      {
         var _loc2_:§7D§ = null;
         while(this.§8!M§.length)
         {
            _loc2_ = this.§8!M§.pop();
            this.§<q§.removeChild(_loc2_.§9!"§);
            param1.§3S§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§7D§ = null;
         var _loc2_:int = this.§8!M§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8!M§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§<q§.removeChild(_loc3_.§9!"§);
               _loc3_.dispose();
               this.§8!M§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §`[§(param1:Number, param2:Number) : void
      {
         this.§<q§.x = -param1;
         this.§<q§.y = -param2;
      }
   }
}
