package §7"o§
{
   import §,#e§.Sprite;
   
   public class §#"E§
   {
       
      
      private var §8!c§:Vector.<§=,§>;
      
      private var §;#'§:Sprite;
      
      public function §#"E§()
      {
         this.§8!c§ = new Vector.<§=,§>();
         this.§;#'§ = new Sprite();
         super();
         this.§;#'§.§4"e§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§;#'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=,§ = null;
         while(this.§8!c§.length)
         {
            _loc1_ = this.§8!c§.pop();
            _loc1_.dispose();
         }
         this.§;#'§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§=,§ = null;
         while(this.§8!c§.length)
         {
            _loc1_ = this.§8!c§.pop();
            this.§;#'§.removeChild(_loc1_.displayObject);
            _loc1_.dispose();
         }
         this.§;#'§.§^$@§();
      }
      
      public function addParticle(param1:§=,§) : void
      {
         this.§8!c§.push(param1);
         this.§;#'§.addChild(param1.displayObject);
      }
      
      public function §2&§(param1:§=,§) : void
      {
         var _loc3_:§=,§ = null;
         var _loc2_:int = this.§8!c§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§8!c§[_loc2_];
            this.§;#'§.removeChild(_loc3_.displayObject);
            _loc3_.dispose();
            this.§8!c§.splice(_loc2_,1);
         }
      }
      
      public function §4!3§(param1:§#"E§) : void
      {
         var _loc2_:§=,§ = null;
         while(this.§8!c§.length)
         {
            _loc2_ = this.§8!c§.pop();
            this.§;#'§.removeChild(_loc2_.displayObject);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§=,§ = null;
         var _loc2_:int = this.§8!c§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§8!c§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§;#'§.removeChild(_loc3_.displayObject);
               _loc3_.dispose();
               this.§8!c§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §8!b§(param1:Number, param2:Number) : void
      {
         this.§;#'§.x = -param1;
         this.§;#'§.y = -param2;
      }
   }
}
