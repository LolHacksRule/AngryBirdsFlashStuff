package §?=§
{
   import §&!9§.Sprite;
   
   public class §=!J§
   {
       
      
      private var §,f§:Vector.<§8S§>;
      
      private var §&!G§:Sprite;
      
      public function §=!J§()
      {
         this.§,f§ = new Vector.<§8S§>();
         this.§&!G§ = new Sprite();
         super();
         this.§&!G§.§2!2§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&!G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§8S§ = null;
         while(this.§,f§.length)
         {
            _loc1_ = this.§,f§.pop();
            _loc1_.dispose();
         }
         this.§&!G§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§8S§ = null;
         while(this.§,f§.length)
         {
            _loc1_ = this.§,f§.pop();
            this.§&!G§.removeChild(_loc1_.§@!+§);
            _loc1_.dispose();
         }
         this.§&!G§.§;1§();
      }
      
      public function §<§(param1:§8S§) : void
      {
         this.§,f§.push(param1);
         this.§&!G§.addChild(param1.§@!+§);
      }
      
      public function §&r§(param1:§8S§) : void
      {
         var _loc3_:§8S§ = null;
         var _loc2_:int = this.§,f§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§,f§[_loc2_];
            this.§&!G§.removeChild(_loc3_.§@!+§);
            _loc3_.dispose();
            this.§,f§.splice(_loc2_,1);
         }
      }
      
      public function §#C§(param1:§=!J§) : void
      {
         var _loc2_:§8S§ = null;
         while(this.§,f§.length)
         {
            _loc2_ = this.§,f§.pop();
            this.§&!G§.removeChild(_loc2_.§@!+§);
            param1.§<§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§8S§ = null;
         var _loc2_:int = this.§,f§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§,f§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§&!G§.removeChild(_loc3_.§@!+§);
               _loc3_.dispose();
               this.§,f§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §[p§(param1:Number, param2:Number) : void
      {
         this.§&!G§.x = -param1;
         this.§&!G§.y = -param2;
      }
   }
}
