package §["8§
{
   import §`L§.Sprite;
   
   public class §"@§
   {
       
      
      private var §'E§:Vector.<§=!i§>;
      
      private var §'"&§:Sprite;
      
      public function §"@§()
      {
         this.§'E§ = new Vector.<§=!i§>();
         this.§'"&§ = new Sprite();
         super();
         this.§'"&§.§9!!§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§'"&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!i§ = null;
         while(this.§'E§.length)
         {
            _loc1_ = this.§'E§.pop();
            _loc1_.dispose();
         }
         this.§'"&§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§=!i§ = null;
         while(this.§'E§.length)
         {
            _loc1_ = this.§'E§.pop();
            this.§'"&§.removeChild(_loc1_.§?y§);
            _loc1_.dispose();
         }
         this.§'"&§.§1!x§();
      }
      
      public function §-?§(param1:§=!i§) : void
      {
         this.§'E§.push(param1);
         this.§'"&§.addChild(param1.§?y§);
      }
      
      public function §2"5§(param1:§=!i§) : void
      {
         var _loc3_:§=!i§ = null;
         var _loc2_:int = this.§'E§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§'E§[_loc2_];
            this.§'"&§.removeChild(_loc3_.§?y§);
            _loc3_.dispose();
            this.§'E§.splice(_loc2_,1);
         }
      }
      
      public function §@9§(param1:§"@§) : void
      {
         var _loc2_:§=!i§ = null;
         while(this.§'E§.length)
         {
            _loc2_ = this.§'E§.pop();
            this.§'"&§.removeChild(_loc2_.§?y§);
            param1.§-?§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§=!i§ = null;
         var _loc2_:int = this.§'E§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§'E§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§'"&§.removeChild(_loc3_.§?y§);
               _loc3_.dispose();
               this.§'E§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §<=§(param1:Number, param2:Number) : void
      {
         this.§'"&§.x = -param1;
         this.§'"&§.y = -param2;
      }
   }
}
