package § "?§
{
   import §default§.Sprite;
   
   public class §#$§
   {
       
      
      private var §^!r§:Vector.<§&!>§>;
      
      private var §+!e§:Sprite;
      
      public function §#$§()
      {
         this.§^!r§ = new Vector.<§&!>§>();
         this.§+!e§ = new Sprite();
         super();
         this.§+!e§.§#!1§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+!e§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&!>§ = null;
         while(this.§^!r§.length)
         {
            _loc1_ = this.§^!r§.pop();
            _loc1_.dispose();
         }
         this.§+!e§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§&!>§ = null;
         while(this.§^!r§.length)
         {
            _loc1_ = this.§^!r§.pop();
            this.§+!e§.removeChild(_loc1_.§;!1§);
            _loc1_.dispose();
         }
         this.§+!e§.§4J§();
      }
      
      public function §[b§(param1:§&!>§) : void
      {
         this.§^!r§.push(param1);
         this.§+!e§.addChild(param1.§;!1§);
      }
      
      public function §!Y§(param1:§&!>§) : void
      {
         var _loc3_:§&!>§ = null;
         var _loc2_:int = this.§^!r§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§^!r§[_loc2_];
            this.§+!e§.removeChild(_loc3_.§;!1§);
            _loc3_.dispose();
            this.§^!r§.splice(_loc2_,1);
         }
      }
      
      public function §<!H§(param1:§#$§) : void
      {
         var _loc2_:§&!>§ = null;
         while(this.§^!r§.length)
         {
            _loc2_ = this.§^!r§.pop();
            this.§+!e§.removeChild(_loc2_.§;!1§);
            param1.§[b§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§&!>§ = null;
         var _loc2_:int = this.§^!r§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§^!r§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§+!e§.removeChild(_loc3_.§;!1§);
               _loc3_.dispose();
               this.§^!r§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §"!8§(param1:Number, param2:Number) : void
      {
         this.§+!e§.x = -param1;
         this.§+!e§.y = -param2;
      }
   }
}
