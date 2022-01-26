package §!4§
{
   import §1!A§.Sprite;
   
   public class §#!X§
   {
       
      
      private var §@!=§:Vector.<§^!_§>;
      
      private var §!z§:Sprite;
      
      public function §#!X§()
      {
         this.§@!=§ = new Vector.<§^!_§>();
         this.§!z§ = new Sprite();
         super();
         this.§!z§.§6R§ = false;
      }
      
      public function get sprite() : Sprite
      {
         return this.§!z§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!_§ = null;
         while(this.§@!=§.length)
         {
            _loc1_ = this.§@!=§.pop();
            _loc1_.dispose();
         }
         this.§!z§.dispose();
      }
      
      public function clear() : void
      {
         var _loc1_:§^!_§ = null;
         while(this.§@!=§.length)
         {
            _loc1_ = this.§@!=§.pop();
            this.§!z§.removeChild(_loc1_.§7@§);
            _loc1_.dispose();
         }
         this.§!z§.§-! §();
      }
      
      public function addParticle(param1:§^!_§) : void
      {
         this.§@!=§.push(param1);
         this.§!z§.addChild(param1.§7@§);
      }
      
      public function §@!9§(param1:§^!_§) : void
      {
         var _loc3_:§^!_§ = null;
         var _loc2_:int = this.§@!=§.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = this.§@!=§[_loc2_];
            this.§!z§.removeChild(_loc3_.§7@§);
            _loc3_.dispose();
            this.§@!=§.splice(_loc2_,1);
         }
      }
      
      public function §7!T§(param1:§#!X§) : void
      {
         var _loc2_:§^!_§ = null;
         while(this.§@!=§.length)
         {
            _loc2_ = this.§@!=§.pop();
            this.§!z§.removeChild(_loc2_.§7@§);
            param1.addParticle(_loc2_);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:§^!_§ = null;
         var _loc2_:int = this.§@!=§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§@!=§[_loc2_];
            if(!_loc3_.update(param1))
            {
               this.§!z§.removeChild(_loc3_.§7@§);
               _loc3_.dispose();
               this.§@!=§.splice(_loc2_,1);
            }
            _loc2_--;
         }
      }
      
      public function §]g§(param1:Number, param2:Number) : void
      {
         this.§!z§.x = -param1;
         this.§!z§.y = -param2;
      }
   }
}
