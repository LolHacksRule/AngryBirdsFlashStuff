package §&!K§
{
   import §2!g§.Sprite;
   
   public class §,d§
   {
       
      
      private var §null §:Vector.<§^!3§>;
      
      private var §+g§:Sprite;
      
      public function §,d§()
      {
         this.§null § = new Vector.<§^!3§>();
         this.§+g§ = new Sprite();
         super();
         this.§+g§.§=e§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§+g§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!3§ = null;
         while(this.§null §.length)
         {
            _loc1_ = this.§null §.pop();
            _loc1_.dispose();
         }
         this.§+g§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§^!3§ = null;
         while(this.§null §.length)
         {
            _loc1_ = this.§null §.pop();
            this.§+g§.removeChild(_loc1_.§7%§);
            _loc1_.dispose();
         }
         this.§+g§.§#! §();
      }
      
      public function §"!S§(param1:§^!3§) : void
      {
         this.§null §.push(param1);
         this.§+g§.addChild(param1.§7%§);
      }
      
      public function §&!h§(param1:§^!3§) : void
      {
         var _loc3_:§^!3§ = null;
         var _loc2_:int = this.§null §.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§null §[_loc2_];
            this.§+g§.removeChild(_loc3_.§7%§);
            _loc3_.dispose();
            this.§null §.splice(_loc2_,1);
         }
      }
      
      public function §9n§(param1:§,d§) : void
      {
         var _loc2_:§^!3§ = null;
         while(this.§null §.length)
         {
            _loc2_ = this.§null §.pop();
            this.§+g§.removeChild(_loc2_.§7%§);
            param1.§"!S§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§^!3§ = null;
         var _loc2_:int = this.§null §.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§null §[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§+g§.removeChild(_loc3_.§7%§);
               _loc3_.dispose();
               this.§null §.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §-4§(param1:Number, param2:Number) : void
      {
         this.§+g§.x = -param1;
         this.§+g§.y = -param2;
      }
   }
}
