package §^9§
{
   import §use§.Sprite;
   
   public class §@"2§
   {
       
      
      private var §;!p§:Vector.<§?"E§>;
      
      private var §[#,§:Sprite;
      
      public function §@"2§()
      {
         this.§;!p§ = new Vector.<§?"E§>();
         this.§[#,§ = new Sprite();
         super();
         this.§[#,§.§^!G§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[#,§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?"E§ = null;
         while(this.§;!p§.length)
         {
            _loc1_ = this.§;!p§.pop();
            _loc1_.dispose();
         }
         this.§[#,§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§?"E§ = null;
         while(this.§;!p§.length)
         {
            _loc1_ = this.§;!p§.pop();
            this.§[#,§.removeChild(_loc1_.§>#3§);
            _loc1_.dispose();
         }
         this.§[#,§.§4"y§();
      }
      
      public function §>#1§(param1:§?"E§) : void
      {
         this.§;!p§.push(param1);
         this.§[#,§.addChild(param1.§>#3§);
      }
      
      public function §+g§(param1:§?"E§) : void
      {
         var _loc3_:§?"E§ = null;
         var _loc2_:int = this.§;!p§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§;!p§[_loc2_];
            this.§[#,§.removeChild(_loc3_.§>#3§);
            _loc3_.dispose();
            this.§;!p§.splice(_loc2_,1);
         }
      }
      
      public function §2j§(param1:§@"2§) : void
      {
         var _loc2_:§?"E§ = null;
         while(this.§;!p§.length)
         {
            _loc2_ = this.§;!p§.pop();
            this.§[#,§.removeChild(_loc2_.§>#3§);
            param1.§>#1§(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§?"E§ = null;
         var _loc2_:int = this.§;!p§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§;!p§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§[#,§.removeChild(_loc3_.§>#3§);
               _loc3_.dispose();
               this.§;!p§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §!!'§(param1:Number, param2:Number) : void
      {
         this.§[#,§.x = -param1;
         this.§[#,§.y = -param2;
      }
   }
}
