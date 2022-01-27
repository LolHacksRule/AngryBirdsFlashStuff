package §;;§
{
   import §<!N§.Sprite;
   
   public class §[!=§
   {
       
      
      private var §@g§:Vector.<§"!E§>;
      
      private var §6!N§:Sprite;
      
      public function §[!=§()
      {
         this.§@g§ = new Vector.<§"!E§>();
         this.§6!N§ = new Sprite();
         super();
         this.§6!N§.§0!-§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§6!N§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§"!E§ = null;
         while(this.§@g§.length)
         {
            _loc1_ = this.§@g§.pop();
            _loc1_.dispose();
         }
         this.§6!N§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§"!E§ = null;
         while(this.§@g§.length)
         {
            _loc1_ = this.§@g§.pop();
            this.§6!N§.removeChild(_loc1_.§<b§);
            _loc1_.dispose();
         }
         this.§6!N§.§!0§();
      }
      
      public function addParticle(param1:§"!E§) : void
      {
         this.§@g§.push(param1);
         this.§6!N§.addChild(param1.§<b§);
      }
      
      public function §&!@§(param1:§"!E§) : void
      {
         var _loc3_:§"!E§ = null;
         var _loc2_:int = this.§@g§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§@g§[_loc2_];
            this.§6!N§.removeChild(_loc3_.§<b§);
            _loc3_.dispose();
            this.§@g§.splice(_loc2_,1);
         }
      }
      
      public function §8a§(param1:§[!=§) : void
      {
         var _loc2_:§"!E§ = null;
         while(this.§@g§.length)
         {
            _loc2_ = this.§@g§.pop();
            this.§6!N§.removeChild(_loc2_.§<b§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§"!E§ = null;
         var _loc2_:int = this.§@g§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@g§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§6!N§.removeChild(_loc3_.§<b§);
               _loc3_.dispose();
               this.§@g§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §>!!§(param1:Number, param2:Number) : void
      {
         this.§6!N§.x = -param1;
         this.§6!N§.y = -param2;
      }
   }
}
