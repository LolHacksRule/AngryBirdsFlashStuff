package §3g§
{
   import §-!f§.Sprite;
   
   public class §[$§
   {
       
      
      private var §+!q§:Vector.<§?!d§>;
      
      private var §0+§:Sprite;
      
      public function §[$§()
      {
         this.§+!q§ = new Vector.<§?!d§>();
         this.§0+§ = new Sprite();
         super();
         this.§0+§.§`;§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§0+§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!d§ = null;
         while(this.§+!q§.length)
         {
            _loc1_ = this.§+!q§.pop();
            _loc1_.dispose();
         }
         this.§0+§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§?!d§ = null;
         while(this.§+!q§.length)
         {
            _loc1_ = this.§+!q§.pop();
            this.§0+§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§0+§.§6"0§();
      }
      
      public function §`q§(param1:§?!d§) : void
      {
         this.§+!q§.push(param1);
         this.§0+§.addChild(param1.displayObject);
      }
      
      public function §`!n§(param1:§?!d§) : void
      {
         var _loc3_:§?!d§ = null;
         var _loc2_:int = this.§+!q§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§+!q§[_loc2_];
            this.§0+§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§+!q§.splice(_loc2_,1);
         }
      }
      
      public function §4!B§(param1:§[$§) : void
      {
         var _loc2_:§?!d§ = null;
         while(this.§+!q§.length)
         {
            _loc2_ = this.§+!q§.pop();
            this.§0+§.removeChild(_loc2_.displayObject);
            param1.§`q§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§?!d§ = null;
         var _loc2_:int = this.§+!q§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§+!q§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§0+§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§+!q§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function § !t§(param1:Number, param2:Number) : void
      {
         this.§0+§.x = -param1;
         this.§0+§.y = -param2;
      }
   }
}
