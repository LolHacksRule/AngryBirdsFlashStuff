package §!'§
{
   import §^"S§.Sprite;
   
   public class §&"=§
   {
       
      
      private var §&""§:Vector.<§@>§>;
      
      private var §,#2§:Sprite;
      
      public function §&"=§()
      {
         this.§&""§ = new Vector.<§@>§>();
         this.§,#2§ = new Sprite();
         super();
         this.§,#2§.§?C§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§,#2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@>§ = null;
         while(this.§&""§.length)
         {
            _loc1_ = this.§&""§.pop();
            _loc1_.dispose();
         }
         this.§,#2§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§@>§ = null;
         while(this.§&""§.length)
         {
            _loc1_ = this.§&""§.pop();
            this.§,#2§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§,#2§.§6"n§();
      }
      
      public function addParticle(param1:§@>§) : void
      {
         this.§&""§.push(param1);
         this.§,#2§.addChild(param1.displayObject);
      }
      
      public function §;M§(param1:§@>§) : void
      {
         var _loc3_:§@>§ = null;
         var _loc2_:int = this.§&""§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§&""§[_loc2_];
            this.§,#2§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§&""§.splice(_loc2_,1);
         }
      }
      
      public function §!!0§(param1:§&"=§) : void
      {
         var _loc2_:§@>§ = null;
         while(this.§&""§.length)
         {
            _loc2_ = this.§&""§.pop();
            this.§,#2§.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§@>§ = null;
         var _loc2_:int = this.§&""§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§&""§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§,#2§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§&""§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §["#§(param1:Number, param2:Number) : void
      {
         this.§,#2§.x = -param1;
         this.§,#2§.y = -param2;
      }
   }
}
